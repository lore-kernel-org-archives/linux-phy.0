Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28C2DC5AD55
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 21:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jh8UdBrLgePEH9OXfXXW8/gFAcpoaBNM25HWoalhPYw=; b=2Vsqim4pfxmxJl
	MC8XJ78jJ58tmRelfuPUISsF/16zpi1+BqHUqTJ9kN1gm719bt5+eNmghJZM5YtqDtSfrdlXCRKyv
	vZYHFHy0OIImbLipnWXyDiM4aGIIR8ORPuQbDMU7g27nEMY14yZRPbGo6DKRDHPwQW16+fhmUhAGH
	mX4/brBtn2kGZuxJ/oUDN0+IDEf46XnpsxdTISZaikvT+SMV54HTjwoaYCkUUHhFdZr20g8ZCoS0n
	jGEh+4cnpus7J8KUDovR6XmHq5KZN9dYY/e/7hCAacE27IMOG4zE2DmZSFDaAkzt0YKpE5WkpcDfZ
	iSDrumCIHC2vJWb7kIHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtY0v-0000000CwEZ-31x2;
	Mon, 10 Aug 2026 21:58:33 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtY0t-0000000CwDq-1pBN
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 21:58:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1786399110;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Qy1gE2gFEXUChO7E1GpI7tnTvfBOQiRyPrmqiAECFfg=;
	b=Iptps3iBViXz31mMz4M0KmzDT0k3rjg8oOM6pnJ6fM+4D3u2SKxRgi9hrYyX/8DpXpH14N
	IAz4tJaXWTAeB9A5CDBaeYU+TXJdCMQqEYNi6KNHqk7yBTCp0fpdB+gNgRCsVKT84KkjZg
	Y40FkqF+8h6VXQqIDs+x8MQvhMJ416I=
Received: from mail-yx1-f70.google.com (mail-yx1-f70.google.com
 [74.125.224.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-483-4jtrE-FHPQSb3G_mL5LDmQ-1; Mon, 10 Aug 2026 17:58:23 -0400
X-MC-Unique: 4jtrE-FHPQSb3G_mL5LDmQ-1
X-Mimecast-MFC-AGG-ID: 4jtrE-FHPQSb3G_mL5LDmQ_1786399103
Received: by mail-yx1-f70.google.com with SMTP id 956f58d0204a3-668b2c03fbfso3904273d50.2
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 14:58:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786399103; x=1787003903;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:content-type:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Qy1gE2gFEXUChO7E1GpI7tnTvfBOQiRyPrmqiAECFfg=;
        b=eCoSCEScGL/8jMKLu5afpwZpkWY/ahhB1/rBp+XlDXM2CJDqYrgX2QGnlsiZL75Bfn
         UNJLy5Ewt4mn82gnJ3wsRgAq0lCVSZG4iHoZhrgcR1a22h3WKw5YtNDx9PfEDp+ULjGB
         ILaVQajWy6UAWZTZQ8sH85MEXiAZSYJ30KmUDAc0jJ9JAk8JMlhB3dBvl15XYFXmZlrp
         MMUG0DFuzwEVmVQjuRN2D13if1agNzchwh+pnJX5wuqALutEPqm+QtVUh9ZWMMDGaYvb
         p496sFXI2xYsm0r6UGaymTBEPnEwyhrJa8qB6ku0lkk/Fg6DQDWQK0hQhF5EC2FEaYRU
         IdSw==
X-Forwarded-Encrypted: i=1; AHgh+Rq51aquIpJ19L4F8a2o3+dBt0AeT/5JWTdK9EL/3NJbGqVYP/QkzdgdbD1td5FaAJXqkV9fNhIU/+s=@lists.infradead.org
X-Gm-Message-State: AOJu0YwaZ9F0Z/x6VBNk4O7HteBw8ZtqisHemGAKWal0h3nVMyid74so
	WFWvPtTrsvsYUNjiUMhqejjVjz/W+I/4v45sMaQ0GeN4wM5pb64+mmfXQsm0Rf/kcFIlggfSiE+
	+ndH4DakGopb7zbvm3la0Fk5YMqY01bYW5OUHdq2YlgO92Ku1bml3vEt5iynPNoQU4/Y=
X-Gm-Gg: AR+sD10qujVFsVToIAUxnvDlgkbmlHykfTEow3zaeOFFCw7F8ScqZ5u5hCgmr61nrXG
	vY1xYY3weFx1aMwwYrcT7JYpPrJYvCfOq2wzbUGbQrYJ8F9aoXr05OD1QRa4GfWsYAMu1c3FzVA
	CTtvNEVWm+kC9ZVIwDs1N3WZKjuvhBk4/dg0NFjepk/um+e7TqkbxqTvMo6+XbUhk2oiVzBXZN7
	TJCDn3F5q2MsK+zGFVAetiSUozPGnyKQSjJ49pO8SwlT6hzomQYdu7MdM3pq6Dm3+g4Q43tuqMZ
	IWJDvKHSrKcbTUimAg1D2yzNpi0e5LzdGVNcas1E8DB5F13WjS9vYHDN9m8ZAT0Ps04juakB+rY
	fSYabAMh5Tqt7N1/Vgo+d2U6sSf1wXcJ5PYs=
X-Received: by 2002:a53:a48e:0:b0:669:113d:7183 with SMTP id 956f58d0204a3-66ac3016a1amr14341642d50.40.1786399102961;
        Mon, 10 Aug 2026 14:58:22 -0700 (PDT)
X-Received: by 2002:a53:a48e:0:b0:669:113d:7183 with SMTP id 956f58d0204a3-66ac3016a1amr14341602d50.40.1786399102538;
        Mon, 10 Aug 2026 14:58:22 -0700 (PDT)
Received: from redhat.com (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-66acae8584bsm7562472d50.10.2026.08.10.14.58.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 14:58:21 -0700 (PDT)
Date: Mon, 10 Aug 2026 17:58:19 -0400
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
Subject: Re: [PATCH v10 08/12] clk: zte: Introduce a driver for zx297520v3
 top clocks
Message-ID: <anpJe3-voStp-5Pw@redhat.com>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810-zx29clk-v10-8-63846490712c@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260810-zx29clk-v10-8-63846490712c@gmail.com>
User-Agent: Mutt/2.4.0 (2026-06-19)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 8GajafqholSko0GpvT0pqnz2Z38a9g-58wWLzsIzhis_1786399103
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_145831_536178_340DB8C0 
X-CRM114-Status: GOOD (  12.11  )
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

On Mon, Aug 10, 2026 at 12:28:27AM +0300, Stefan D=F6singer wrote:
> This register space controls core devices: PLLs, the AHB bus, a lot of
> timers, the USB controller, the Cortex M0 processor that boots the board
> and a few other devices. For some reason the LTE coprocessor is also
> partially controlled by it. The main application processor and DDR
> memory are not found here though.
> =

> The register to reboot the board is found here, as well as a register to
> control whether watchdog expiries cause a board reset.
> =

> Signed-off-by: Stefan D=F6singer <stefandoesinger@gmail.com>

Reviewed-by: Brian Masney <bmasney@redhat.com>


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
