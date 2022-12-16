Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64785C3DA6E
	for <linux-phy@archiver.kernel.org>; Fri, 16 Dec 2022 23:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YpEtQkE0yQ+CTbS+RSwjgChTtIXZkNH62aLLy2LrmHw=; b=XwIIAyJyoJIrWQ
	N2L1h1mXRrdDJHXVi74/EDzXtBMfTTk3txlLK/gOfhp2pSBzrKsezMDrSe50w/zjLaNU3GePCAweu
	tBe+lDDsoe/JOgRph5x/LMEipikbLiHQE40WdVz9mfmblP65TpvJPHpM/SCIe8hQ0XtRY5ZGOuMi2
	fht9l08FK8iQAk6ksJK/0LiwORGv/HK3TfyQbAYuynWT5TaLEoBOfmQVEh13mTY+FWVDRsC0U1ETR
	Ct42dD22q6vqeLuwI8SMU2uLLxugO9B5oKHb9DVJhoTmCU5XY9PTnVff+8Mf6pIj4logkX11mHUKD
	VdmEZG0exnC/fQRRY1cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6KHO-002iC7-H1; Fri, 16 Dec 2022 23:38:14 +0000
Received: from mail-oa1-f47.google.com ([209.85.160.47])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6KGd-002hsf-Ew
	for linux-phy@lists.infradead.org; Fri, 16 Dec 2022 23:37:28 +0000
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-142b72a728fso5119698fac.9
        for <linux-phy@lists.infradead.org>; Fri, 16 Dec 2022 15:37:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ii0p33EQ9H4zp/XmzfpUA0yClbxfMoE6kATAvTWMwec=;
        b=wQQ0RlYaHXjY0SRhDtrVHtryfy4vOAhzmwgmdEYPbjabnqIXmEoV2t6KVSFkEgCHKk
         SGyKnFi5YU9OrM9Bkf4ZBlMwQ+wEwOK6CvYTD3vIiD1JjzVCzf5g8otW7FpJr6sGnfM+
         oRwegqv+kW5g4Y1FnGf/nOpyUt6/WtfUTvMtKodQngp6MPRJyatNgEYZjFMNQjGMxoMc
         ZemnuG3Im0d2uE3ah2nuAgiiSoahm1Y3DEV6VWRbBnhDAbAhN2KH68IwuIp5DAlVMHbv
         kxEHDD+JNoc2l8VuZ/E3hRW95HpUWehE7yLAQJk2s4AZzlVsSqdVWzvFvvHeghoEw9vc
         bQEg==
X-Gm-Message-State: AFqh2krftBU8znlNYwc3n6mp9tM9R1yPN+EBcBxD290FNC+4kmE/um2V
	5Et6W8WnclrYwTuT31OkqR21OSVkEA==
X-Google-Smtp-Source: AMrXdXvAb/LsQP3Ex0aDd+UgqHNCU2nLgLX/l3ruHhfCO9PK3TsEg8yDhvAa4dol4NasHyfSjPcTsQ==
X-Received: by 2002:a05:6870:46ab:b0:144:c0f3:ca57 with SMTP id a43-20020a05687046ab00b00144c0f3ca57mr252303oap.39.1671233840763;
        Fri, 16 Dec 2022 15:37:20 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id i8-20020a056820012800b004a0aac2d28fsm1397017ood.35.2022.12.16.15.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 15:37:20 -0800 (PST)
Received: (nullmailer pid 81854 invoked by uid 1000);
	Fri, 16 Dec 2022 23:37:19 -0000
Date: Fri, 16 Dec 2022 17:37:19 -0600
From: Rob Herring <robh@kernel.org>
To: Eugen Hristev <eugen.hristev@microchip.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, luis.oliveira@synopsys.com
Subject: Re: [PATCH v5 2/4] dt-bindings: phy: Document the Synopsys MIPI DPHY
 Rx bindings
Message-ID: <20221216233719.GA80712-robh@kernel.org>
References: <20221216143717.1002015-1-eugen.hristev@microchip.com>
 <20221216143717.1002015-3-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221216143717.1002015-3-eugen.hristev@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221216_153727_619790_F3E1D565 
X-CRM114-Status: UNSURE (   8.58  )
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

On Fri, Dec 16, 2022 at 04:37:15PM +0200, Eugen Hristev wrote:
> From: Luis Oliveira <Luis.Oliveira@synopsys.com>
> 
> Add device-tree bindings documentation for SNPS DesignWare MIPI D-PHY in
> RX mode.
> 
> Signed-off-by: Luis Oliveira <luis.oliveira@synopsys.com>
> ---
>  .../bindings/phy/snps,dw-dphy-rx.txt          | 29 +++++++++++++++++++
>  1 file changed, 29 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.txt

New bindings must be in schema format.

Rob


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
