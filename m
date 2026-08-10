Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 040A7C5AD7B
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 21:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qtz4Yc2zg9ylrlaZeWaNKnDQEHSptvxwppHpUlfH7KQ=; b=O6/c09FTbo6NLR
	REE1tRGIlrf43HMcErmYHX6GG0AMMEoosDvOxeUlnokPSaR2hb7k+K0yIadsegfpWb6+Myfh4wRxW
	tBSTraj7TOvJxHhiBKaXP03hm7304EnV9CjHDp+EfPcJHrU0lp1B54mtzI7zOTK1XbdHuxBPYEaBa
	cdsczlIw8PgBqoaGOA4fofplH5/lCechfMWX51bjLR1WgFtiR7CLGRzVDUqpRTbAuvWhqqMaW/G4G
	CzF2x3EJOZK60XZ4tpFWaGFzY1Il2vbtqI+Z9PAOeguy/B42ePtCMejdZAALn9pmUqsoFQZcI+8nX
	JMh8qpvK6ms59jBCp+Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtXqo-0000000Cvd6-1wOn;
	Mon, 10 Aug 2026 21:48:06 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtXql-0000000CvcM-3OML
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 21:48:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1786398482;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u2kNjc7BvbeCZjQXT/CDfqSPqzNq93GXaL2zxjFnbUA=;
	b=BJzx3Mpp3Si/uKSqRzG3pni5+n67U+ImfpYwMeO8Jn47QekEfFooJHFjuDdrIV/VmKizin
	0CJgJJp6kNbe0ihEUzkwyLUTr2Q9dedkQ0YasxNZHtW24JQ+gmrOMT8uYhNSc6JVJAWruK
	RzpBMJq7KoAeUVdkG/Jv0RSQEwTHYuY=
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com
 [209.85.128.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-438-S3aZycktPCiXVi5L73r9cw-1; Mon, 10 Aug 2026 17:47:59 -0400
X-MC-Unique: S3aZycktPCiXVi5L73r9cw-1
X-Mimecast-MFC-AGG-ID: S3aZycktPCiXVi5L73r9cw_1786398478
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-81e7b95cd84so42559567b3.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 14:47:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786398478; x=1787003278;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:content-type:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=u2kNjc7BvbeCZjQXT/CDfqSPqzNq93GXaL2zxjFnbUA=;
        b=HTrpDWsQIMS8CWHibzbDZcyndwS/bD69F1Zx9aWZGPjuPcJbcZ20oduZ8sO7E1o6by
         OirVoEVVEUOtblvx6raBFqHOOK/wIYZ1+YdwxHabcObt9XXAd5BqL1qhJM1hOIt7P+ie
         DLxgYmexqVilKnxkSC3o/kJ3mG5xiwoOK7bMTQO2GEGhiZ02gLyXXzE2QQTk6xOu/kG9
         j0g6HuAeAGWIe9P5KDDMI2BA43x3N5zfRAjrMv2mrTRKpMSkYW2+7iiNIaoCEDcIDI/5
         38ENswhFv/547yMaUfV9bb8ZZv/YthUD018GFdsXNncKvGkx0Ky1nZLYKkzqlmlQRHz6
         7Dew==
X-Forwarded-Encrypted: i=1; AHgh+Rpwzcu1xZGujpOnsIlqxjxSvKzbiF+LJrD16zSDKSvdUIbRVQrXbd6hUGUyHiAXCI7ZhUzt9owIMGo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxqSbxmOw2ha3aPxTqy7U34Pjsojukqt4CCEgmNWbj4k4I226pI
	wc04Ys5kHvsaIx8B1B+QkoArIM9lHcACWQy6ymv6wWrJNZ9ZgjtjpMAXVg6mKUubiskItZQDqRY
	pOJUslb4+IArS3/Z9532pz6Zn6PecjTH9NwIzVk9oLc60IDfjGypVn2T9z/MK5y0bM+e4qKapvc
	A=
X-Gm-Gg: AR+sD13TQ2rWmW9eletIzFJ5wuQTNldoN9/dZbWOdN00lwdsEvttEOt6L+YqgyBzymH
	xqqesWUenjoynA0WKHroZPITAC9PUjMdjSkqAwziCV3pdVP7ta9r200zN2igExYjPJEXU1fvNl0
	6iY2ImFX/SxieVcrAuzo3SzjkYKHllOxoUiQ3bqVqCQHtZ9wDyYBxUC2F1Mo94FKwTRr2Ofb/BK
	OA6PJJYbpwA/f3zc2vFGUoYtRn2dGZdzXuBFeGK6ETJ/TqXObF2CvgVxoBndzJyhKjCuwZV3kcS
	QKwoJGFCWG5EDuNVSuNQAQO2gJQyFaNp67w0IMk2leeSVRN+C4ysf8D0nLWrPJ7SGTUpXC1fdOK
	iuCR8ZjC4PN8D1sRF6VKzQK9TmM3tf51Pv3k=
X-Received: by 2002:a05:690c:9989:b0:81e:4e5d:484a with SMTP id 00721157ae682-8243fdf211amr161873567b3.2.1786398478514;
        Mon, 10 Aug 2026 14:47:58 -0700 (PDT)
X-Received: by 2002:a05:690c:9989:b0:81e:4e5d:484a with SMTP id 00721157ae682-8243fdf211amr161873217b3.2.1786398478040;
        Mon, 10 Aug 2026 14:47:58 -0700 (PDT)
Received: from redhat.com (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-823f577c580sm64586967b3.27.2026.08.10.14.47.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 14:47:57 -0700 (PDT)
Date: Mon, 10 Aug 2026 17:47:54 -0400
From: Brian Masney <bmasney@redhat.com>
To: Stefan =?iso-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org, mfd@lists.linux.dev
Subject: Re: [PATCH v10 05/12] clk: zte: Add Clock registration infrastructure
Message-ID: <anpHCvLCm1JKImC_@redhat.com>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810-zx29clk-v10-5-63846490712c@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260810-zx29clk-v10-5-63846490712c@gmail.com>
User-Agent: Mutt/2.4.0 (2026-06-19)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ZMekpPOXWYdldqdZLULkt8dvcE29ksh1_DV7lM5Xx5A_1786398478
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_144803_923069_32305AED 
X-CRM114-Status: UNSURE (   8.33  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, Aug 10, 2026 at 12:28:24AM +0300, Stefan D=F6singer wrote:
> The next patches will implement the regmap clocks and PLL driver. The
> actual hardware specific clock listing will live in a separate module.
> =

> Signed-off-by: Stefan D=F6singer <stefandoesinger@gmail.com>

Reviewed-by: Brian Masney <bmasney@redhat.com>


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
