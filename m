Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF045C44508
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 19:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVj2khSt3YWrfhR5nOU9ceM5VTsZ4de2l/Grk86H1Rk=; b=07lgZWhJLrrCg7
	VU+gcApbl38Av3+pt27vwOvFIfYTVrHEF5ac66t286/pjEyZOClqVxigiwgL/XQI4D41pd5B57QhP
	bXt8oe0WTEdZtqKX81+UAH+h3yg+Tiip33uMEqOcyktq3SyK+3szbL0PGeF8/CcEbpi/gFUMy0Lzq
	W0raYEuVdtCaY2DljF4prnMSfLGKa331BD/pZM25zi/hjgfTfuCuSFHVfGMSzW84SkWDJv+5JdKvU
	VWhQsPNeGKk7Tp86jQTBPyUFOgdLN3v1GxKTRoE+FtdIyw/NWo3r/VHg30RiQj5uFf+g+JOqOHoyY
	c0ijvmbDBWPzd6wU74sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5fd-0000000FpHi-0R9T;
	Wed, 15 Jul 2026 19:53:29 +0000
Received: from mail-ej2-x02.google.com ([2a00:1450:4864:34::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5fZ-0000000FpH1-4BY3
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 19:53:27 +0000
Received: by mail-ej2-x02.google.com with SMTP id a640c23a62f3a-c15ec8d6663so181370466b.1
        for <linux-phy@lists.infradead.org>; Wed, 15 Jul 2026 12:53:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784145203; cv=none;
        d=google.com; s=arc-20260327;
        b=dDFzQ+pF/CvEvv19gOKnpd/Wh8uv91M2ig1uVG3mYG59BaG21IqfmRu8t1hg9Yd04N
         0nxV0Nf7HeqHyN1DBN0oQ6NvVAr3nZyyYP/zKxUqK8p+L3KxP/q9cObl+5zMQQesMgZ1
         A1gCR7Xfsy2PA68lf+2sc0jcDFA8DzRPZAMcWHqBaB5XVvUcZzEWSg2mmdf0De/KdcxT
         Igdfg7cn9Gun6kXBNxTWHreqF5uYoq3oVcdaJuyc3YjMA53jFVmNm7PQ3WtKu8iBY/2F
         BUCBAB0W/pbJE/yvkeUBVAKyLzOad2PPuUJLohYQNHZ5JgabwITY7Iiw/h/b21EP2GTe
         gq6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6aYsyLRIT7+vY7T3t5Bn20VE9ftHbJ2BhHft7v3ul04=;
        fh=n7j5kcsWybzwOVYDixlFV1JSheUgDMdmRuNgM9rGokk=;
        b=f0jm9W0cu3K48xyuJv8rCCsg1xvVe8Bt/pYEYgV03Ry8IEj3Xz48czdLxZ4cDIF7Ye
         NfhTwmNOUpPGQlBVdr3pqgegz1LxOYwsg0TVSNL6opMJsoVAVZXNXZGmn3vyTGaXxSlh
         BwFlNINLyEpRFidZP+jorkhB3koBU4uhVuKkdYbI9DQP6bJMU9BUB0+WTHI3Q0toDVHU
         wr2yXBRPIBrAOmI/QM+NhHTn0AK6YOEEtqraP9ZV4dJg+6F7VYPv9YmIV7fS7IpxEjws
         wpfOFSdUz9Ba4RTv9vEzDsBc/F2eaBX+uxw+n5L4Dr1uLKs+5gKSOdooEJGHem5z+QX1
         /tAw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784145203; x=1784750003; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6aYsyLRIT7+vY7T3t5Bn20VE9ftHbJ2BhHft7v3ul04=;
        b=WIUWOhDbsy5JQ0IL+vAmXKI1U8lVMl26FXqR2quoJBsoGh/S1bcdXGaZ59kL+EAVRR
         CfTXvwjGXcgkuLJcEgzYqJaV5Igu9Usp/5CfFBezI4eDIKHYDG0Nc9oWpdABw4uGxFBs
         1ab4BDw/CTAieOX8rLyrWcR1CbNkhBC0h/SIDzhuI69ZMgU7WTpUIyvbZdX/8P8NhkNR
         BoDaXpd4QQwQvwDM4tougQxz045JRfZCfCVmM1a/zuMyKIMOPQzfzC/4Hec38PjQXvzb
         3w/WHJcgMorkjDQ7lShyyH8gx9MUewlX1xB3MRjX2f1J6MNcjaG3NSZPIQTzjNknpgp4
         uaGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784145203; x=1784750003;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=6aYsyLRIT7+vY7T3t5Bn20VE9ftHbJ2BhHft7v3ul04=;
        b=KSP4I4tb9dzpn0biJgk0fCkQXSVPt902ZYm7g9HubWemZmtLTtX0c/mzYSWfuPDZpo
         gv//Xv/y7y9lAKVHVFSQskd2UwGFpitIZIY0bc6c6ZdSjXeuZNnP2AlhT8OMJ8E7P4yH
         /WetrSP9RWfZ89dbSQcI3Ldoj8iQBfBDGlP5Uw5uys04MXblxref7vswLf6bcy2gnDJg
         6kEYo5EKPIDXQcm2y+Z5OlSQsMLXWoIqjRQEcqKZ3NuSnZBWIKIaeKIoxWPxWIvIjGq4
         BfI72+SNSHmQcGJUGc7OTnCH+Ze0PAWUwzmx7BaHf6JdsdC+9aVmbN9JW0L8GFbnOVKw
         mUiw==
X-Forwarded-Encrypted: i=1; AHgh+RrWqyt77wOoHLhRIUK34qjLY44VbHEruUYD94ZXE+nYsZ56F+pp3ayLlWM9SwGLtapwLYJtbk5GKYE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzgkkrKknqT4Cx8v0YTliP4Q7W0Maqke0L2IkUa+HNtBYxlNqcy
	wC5zyFDt4vtFS+qkMxGDxpooCyvaPeHF/XttDx6sYA6mTrlVzoV40HO4GIP9O3M79yVAk5bkNIH
	cPAf8X9d5BkRlTrNdL6VWxZg0/IY/YWB7B+sEvOx8f5P9rnw=
X-Gm-Gg: AfdE7cnQYUGnCtewaC/oVIKYfovVjJOHJ5muiNTu5nvTZzkN7staqRgeOt8rRWME7YC
	mtUbnL+ysF86pz0EEbDk9hNAxSQVGyv+pGRICVtRoG71vOZo88OBQdhut8IGn9H+hqXlJzdkinO
	7p9Kd1tvBRcI54edUViXCXkZx3faVIzJNdIL6YSOXlcgBfDLb4BlT3OsFhcRFANh4VvkBT4yysw
	fj4UM5UYz+ZjVBz5ZofY3ZCK6VxL7eCLLKTaUQ820PmRZexu/vmxDZS1lNvRBGnTEXh9AXApUE=
X-Received: by 2002:a17:907:1c09:b0:c0d:43b2:e8e7 with SMTP id
 a640c23a62f3a-c161f3536b6mr986415666b.35.1784145202911; Wed, 15 Jul 2026
 12:53:22 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-3-coiaprant@gmail.com>
 <20260715191449.437E11F00A3A@smtp.kernel.org>
In-Reply-To: <20260715191449.437E11F00A3A@smtp.kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 16 Jul 2026 03:53:11 +0800
X-Gm-Features: AUfX_my3OiYGnoG1-0LHJeJhHkihNhk5NRWBF7PzkFitZB2KLvNMBb4XjsCN-hg
Message-ID: <CALj3r0gK5atP4An=04Bjery3_A1n4QwWF2tkQk+TmPemKDOMOw@mail.gmail.com>
Subject: Re: [RFC PATCH 02/10] dt-bindings: phy: rockchip: naneng-combphy: add
 rockchip,sgmii-mac-sel property
To: sashiko-reviews@lists.linux.dev
Cc: olteanv@gmail.com, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org, 
	conor+dt@kernel.org, neil.armstrong@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_125326_245565_71E4AA8C 
X-CRM114-Status: GOOD (  17.78  )
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

Thanks for the review. I'll address both issues in v2.

> --- Patch [2]: [RFC PATCH 02/10] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property ---
> commit 0d950b4055dd144fecf5059f16535f2c8d94b5d3
> Author: Coia Prant <coiaprant@gmail.com>
>
> dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
>
> This commit adds the "rockchip,sgmii-mac-sel" property to the Rockchip
> Naneng combphy device tree binding. It allows selecting between GMAC0
> and GMAC1 for the SGMII interface on the RK3568 SoC.
>
> > This is necessary for boards such as the Ariaboard Photonicat, where
> > the SGMII interface is connected to GMAC0 and needs to be explicitly
> > configured.
>
> [Severity: Medium]
> Is it actually necessary to explicitly configure the property to 0 for
> GMAC0?
>
> The schema defines the default as 0, which implies that omitting the property
> would naturally default the hardware to GMAC0. If explicit configuration is
> required, does this mean the hardware or bootloader leaves the register at 1,
> making the `default: 0` documented in the schema incorrect?

Regarding the default value: the hardware reset value for the
`pipe_sgmii_mac_sel` bit is GMAC1 (1). I have updated the binding
to set `default: 1` and revised the commit message accordingly,
removing the contradictory "default 0" statement.

The default now matches the hardware reset value.

> [Severity: Low]
> Should this property be conditionally restricted to the RK3568 compatible
> string?
>
> Because it is defined in the top-level properties block, it will pass
> validation for all other hardware variants (like RK3528 or RK3588) that do
> not actually support SGMII. Could an `if-then` block in the `allOf` section
> be used to set this property to false for compatibles other than
> `rockchip,rk3568-naneng-combphy`?

Regarding the property scope: you are correct that this property
only makes sense for RK3568. I have added an `if-then` conditional
in the `allOf` section to restrict this property to
`rockchip,rk3568-naneng-combphy` only.

Thanks,
Coia

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
