Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B1F3C25B78
	for <linux-phy@archiver.kernel.org>; Tue,  4 Jun 2024 12:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bGuEEZkNGwb2NZ/tT25dFZI6j5DWDG4MGcgGzCEVpk=; b=J0ivVfH1zvVPX/
	eG/MnBpYPg6qhI1jlJmDHFBSTttbBOElkbUFER61U2Brwf7KW2rrN80WfGcULaeQHNPVaJQixlGzI
	7PQLbdhnFHrzpaTK4U04lxAVhd5lGkENx4R+xhWhVIGvpYmj7kPWWAY5PG7s7WfOgxcPuHoTWwZbz
	lYNbaMbLzSSBTzCNpaDMFAA63Z0qiNvlFcJM7S6HpPB0d8imQWAPacxvnJkaMUbT4QNDWiygoYRVA
	35VU9vqm9ZFFfOtSPL40utpuMgm87DAzxbRdZ4KrVq0VLNNe1lb+wnPpAfrcx8qERXm21qFHxtwbj
	c1NeIyzFNVIBS2nJfpcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sET8d-00000002Fid-2dPI;
	Tue, 04 Jun 2024 12:19:39 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sET8b-00000002Fi4-01Hy
	for linux-phy@lists.infradead.org;
	Tue, 04 Jun 2024 12:19:38 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a68a4a9946cso338195166b.1
        for <linux-phy@lists.infradead.org>; Tue, 04 Jun 2024 05:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717503574; x=1718108374; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5P7GHZtJwM0gmngdgU8CZRB7FdR1U4kDjDmKnnewdNs=;
        b=VKrERGUyrRhLXnB8BaHNOmPjCHeDSSBwrYhoCmhDNRIAu3usYXDu90Ut0E4Y89PiI0
         5yCPFWUuRK0DGCn84SoUkufuiruvqap72s7uJeV8nN0Ju6NBJxO7N0G9BxzQesY+dPVD
         tX+g16NUxFsYsdsGcjyLCB8DAv9/S8IpQPm9H1UD5VwoHIzFnRWO5vzDYwaL32MwVeec
         vLcvOjBlpLk2oVPtVfKVSAAIY+m2AuQKaXxMLza+GcEkAxgHMQjWnSUvnzHZ3nwfM25l
         bBxjU4qiqKQ7CnnAzQdPzs+OgAq2GIkpJVKcqbqO4sA8g/xCi4gc3AYO4zI3MVu9OWBW
         ewZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717503574; x=1718108374;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5P7GHZtJwM0gmngdgU8CZRB7FdR1U4kDjDmKnnewdNs=;
        b=p50bzjzCQ8/aLEUQuVnMB9S5UxL8I7QjzURQqRT+azT7eSro5W1gy+mhvRget1gYsW
         tgpSiXe27sCf/evE74eVw1tJGy6NA4mSFEKidJKaolw9OtS9v5BqfdTuKQf48F56mVD2
         BaKycgN/P24r+tEr5az/56yD+tzp1fDtRJMxQiwdaeBj4n4OSdTIvtoaPbJWSSNHj1Dp
         /ikkFou7z5oF0Lqp2t3xJunjAuMl2vO4MaKxf77fh/Dq/pic8wIrxuOvoipbw1BAxemf
         rq8Ter1naY2a71SX5PJIAT2IHf2sMKmzmzlH0A2TOP7griV/NLxlNpN0n985SdtVUY6E
         B9oA==
X-Forwarded-Encrypted: i=1; AJvYcCWTd2ctHmVG11Ac7VeSyYcMn52CWoIfdIg+rIWthq7PX6YsBsfNqIxwM+sOElBoMGKouNfrbE9ULRPNWOISaGc//fq0vfHUAosm/ly8Ww==
X-Gm-Message-State: AOJu0YyFXg4wspRQubk84JC5Z45UvSpWyc3+ola+km3v7V18xZWuqza8
	CVsOtoq3le1wWOhv0HkH2OmVmXnPRKqNl68ZSUgZkkeKDNLEyao9qKybZeMGiWw=
X-Google-Smtp-Source: AGHT+IEDnU8aYyTPGuIw7hpLBWkTwVE+/TQ9c+IYEZrWq4iqp25PhHL/PsSsT2nhyGS2E7hIlPZhBA==
X-Received: by 2002:a17:906:f144:b0:a68:c3fe:c8ff with SMTP id a640c23a62f3a-a68c3fecacamr614719966b.17.1717503573605;
        Tue, 04 Jun 2024 05:19:33 -0700 (PDT)
Received: from linaro.org ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a68ba90e185sm469759566b.157.2024.06.04.05.19.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 05:19:33 -0700 (PDT)
Date: Tue, 4 Jun 2024 15:19:31 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x4
Message-ID: <Zl8GUw7WQKIprA+C@linaro.org>
References: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
 <20240531-x1e80100-phy-add-gen4x4-v1-1-5c841dae7850@linaro.org>
 <Zl26Y0VklPmiirem@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zl26Y0VklPmiirem@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_051937_063972_D86D771E 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
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

On 24-06-03 14:43:15, Johan Hovold wrote:
> On Fri, May 31, 2024 at 07:06:44PM +0300, Abel Vesa wrote:
> > The PCIe 6th instance from X1E80100 can be used in both 4-lane mode or
> 
> nit: s/PCIe 6th/sixth PCIe/
> nit: s/from/on/
> nit: s/both/either/
> 

Thanks for reviewing. Will address them in the next version.

> > 2-lane mode. Document the 4-lane mode as a separate compatible.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
