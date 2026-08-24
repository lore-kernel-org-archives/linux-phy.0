Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F8C5C5DF94
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 15:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOM+sb3+oY1cUPgqBqdtWYz9kSjLT/HzZEZNQR+0Xps=; b=M4+57kEYPvD1zs
	JiUlILaHkR3Vf41fXgCILNyU6LI6mVjmv6cYD2KyX7H9LgvRNXpK2n64v9q3oR7G/sKQlduur5Ce/
	sHAbT+2Ee8kJZDK2rSj1Oqv03CxeqzGJ1VdKaWSGwF27EEuZu1ZGtCxA8eHQANEpyP+H1v3FcKb96
	27EG+AihLDrQ0BPlwWTDnUa6eooNTA4HnzFvytcYknky+WCtZU5CXadpS6adqrL1+fsDbcp1mqPxW
	4ueegTj7NZ61Otbw1T4u2minwGc5XVthZvWsDw2QIom+CVMfBh1igf/zrXoMozPqw0/DPUO/FIbTE
	03kaUnaYAU1Wi6Di3GCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyWWi-0000000GuvF-0izG;
	Mon, 24 Aug 2026 15:23:57 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyWWf-0000000Gutl-04yS
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 15:23:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1787585032;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=t3RhcvzE2LDgfcbnY3j5KII1AB4sSFJ69Dx82UdW9TY=;
	b=iy+z0aozX5vWBjlAoHAHrmeDI4AofDhMbBhAIyGvnKKZPkwQvd88WGj3xbghEGNd8Lhn03
	fEXNYfhAZgVWvETlXfs+6XxtX1m/0LT5otvbjsT7NayCnmFmJWbq1NJuDvINVH1I7sweAs
	Nk+BL60oxCjkRMULgRV6O1GEcaRDNCE=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-645-mxRwiwRxOZqM_ArccLgpJg-1; Mon, 24 Aug 2026 11:23:49 -0400
X-MC-Unique: mxRwiwRxOZqM_ArccLgpJg-1
X-Mimecast-MFC-AGG-ID: mxRwiwRxOZqM_ArccLgpJg_1787585029
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-92e82060977so360881085a.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 08:23:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787585029; x=1788189829;
        h=user-agent:in-reply-to:content-disposition:content-type
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=t3RhcvzE2LDgfcbnY3j5KII1AB4sSFJ69Dx82UdW9TY=;
        b=YgUZt6985cO8tjXq110oQ1JlFNXxmGxfSS0GnVlN58egI0ahjCROQcSNp4+3OvMPM7
         gXdeBwAxAFp7ayAgtco1xgoUkQ6ZxTn5tkyYoEh+v6o5Q5DY55wOlTVibCWBNk4dMWYb
         IzV73M6NLuEQGq4AA+sPlRc8mx3GMwguGxSzpe3GcCCE4qqWj9UR99nugobZgGL/Dkv2
         p4xuWdzmyZQp34U+KW3AhWh8pyLQ9OZBdWcVUYkkS+cYI9sHN7BjsN+hzQb2sqC07pU/
         BMUya+P1HwqFweYaHwUvJQcbRsyiMjlYEPMcSuDmO5KjmGcVhVRdElTPkVECYd98Ki3M
         6G3A==
X-Forwarded-Encrypted: i=1; AHgh+RruYU8akwTCsLEy9bo7F8NrMvsRxrGcxsqQBZXGbMjgltn2ETgzhE5CA7aQl08FAl8xqnBprMAxfsI=@lists.infradead.org
X-Gm-Message-State: AFuF++mcQ4BFLSWb4+PzahasaFD+qUmA7VHOm+8XBZhl4k5dgNLcl/mE
	KIMTVHrr+rrUGiMs1/atnlFpd6VIaLbZbi9ppQHUP1wEqfTfMKW5Cqz86nW7eg5D30CaM7v/BH2
	ZujJztIXPrkYxSfe6zEwV0PS4xQQOgDRsgAUQm+pTkTQ8WwjncU8YXpWpnWgLC9vHrxo=
X-Gm-Gg: AR+sD13HD7j1WoAPWZGmymes/i8sgHAXxQcX/IGbumaIBlI2lh/ngB7zhgNfBgUagWD
	4fhFUNdfOin+XMhIYCWZqfYONO5KusdZQkg19zZBjeJ44xlJva6E5HzQq/Tmn9ZcKucOz0Z7A6k
	ENfiwusEdn+q8tDpEAFZzlNuyLPBDPZDyD6B0TrL4aqte9irKulXu8IPxJGn1YSCNrfm7xTjOIF
	C12R4Yf8O4II8nK+D/yJhT3qJlRTLuvI0luQoLDM0WCSkn3w0ok8gNjJTJqsuJzv6Vjz35RRBPy
	VUQHZlXvdHBmTNKV2qX5QLCEqYPDeV9aMLjm5cecmbb+vzTQP257941TeAkeUvQVCQKnAMj+fNH
	wKIdki5URi+5aJqzT/iPZRrIfLI/dg0x8ouM=
X-Received: by 2002:a05:620a:410b:b0:918:7e9e:de74 with SMTP id af79cd13be357-93728511a13mr3206787485a.17.1787585029353;
        Mon, 24 Aug 2026 08:23:49 -0700 (PDT)
X-Received: by 2002:a05:620a:410b:b0:918:7e9e:de74 with SMTP id af79cd13be357-93728511a13mr3206778885a.17.1787585028700;
        Mon, 24 Aug 2026 08:23:48 -0700 (PDT)
Received: from redhat.com (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-93749ae390esm523684385a.16.2026.08.24.08.23.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 08:23:48 -0700 (PDT)
Date: Mon, 24 Aug 2026 11:23:47 -0400
From: Brian Masney <bmasney@redhat.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 0/2] phy: Make sure clk_init_data is fully initialized
Message-ID: <aoxiAyoETWEZ1bue@redhat.com>
References: <cover.1787240165.git.geert+renesas@glider.be>
MIME-Version: 1.0
In-Reply-To: <cover.1787240165.git.geert+renesas@glider.be>
User-Agent: Mutt/2.4.0 (2026-06-19)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: KsUdjkAKM-pLqyUdS6LXzevnCeItz7leudSDAQj5N8o_1787585029
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_082353_124983_5DF1A91B 
X-CRM114-Status: GOOD (  16.09  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Fri, Aug 21, 2026 at 12:08:38PM +0200, Geert Uytterhoeven wrote:
> 	Hi all,
> 
> The clk_init_data structure contains several mutually-exclusive members
> for different methods to specify the possible parents of a clock,
> prompting drivers to initialize only the members they need.  However,
> not initializing all members may cause subtle issues, which are only
> exposed when CONFIG_INIT_STACK_ALL_PATTERN or CONFIG_INIT_STACK_NONE is
> enabled.
> 
> Hence this series aims to make sure all members are fully initialized,
> to avoid such bugs, and to prevent future breakage when converting
> drivers to a different method for specifying the parents.
> 
> Part One[1] fixed all cases that I identified to be real bugs, in
> response to a crash I saw on BeagleBone Black.
> 
> This series is the PHY subpart of Part Two, which fixes remaining cases
> that are currently harmless.  These are still fragile, and may cause
> future breakage when converting drivers to a different method for
> specifying the parents.
> 
> Thanks for your comments!
> 
> [1] "[PATCH treewide 0/5] clk: Make sure clk_init_data is fully
>      initialized (part 1)"
>     https://lore.kernel.org/cover.1787165329.git.geert+renesas@glider.be

For the series:

Reviewed-by: Brian Masney <bmasney@redhat.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
