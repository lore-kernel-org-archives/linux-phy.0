Return-Path: <SRS0=iPRR=JM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE44AC433B4
	for <linux-phy@archiver.kernel.org>; Thu, 15 Apr 2021 21:11:39 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 82A07610CB
	for <linux-phy@archiver.kernel.org>; Thu, 15 Apr 2021 21:11:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 82A07610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m2SP47Xpn/0ozgN4Rq4LfXI4S1oSuRvJp+CqvDtVnGs=; b=qtCMHXs4Emx+zvcMVVZXioWmm
	WJnNhcFnrf3efPod1EfY8BXtuq0i93AlxZbjNpvfOsJEXIQvNV44/hVtm46oCWSS7uaXddpZNFsU8
	8Iq5i0Eqy5SEVdq0OCNp/J9kxvcpP640Zpq+2aDDfrvRPSm3zzv6ABch5ExAjn3IyhGJqS3cTm7ac
	VRvK3qxk6aAZCMGgl7dDywJ4glJAkDWW2GONKK4vuofQx20e/9sy9nxe56tvHOqVHrmYVJZ7G1Ng+
	1z23b43eZaeD8OPJxX0yHBNFn3SHGVOTlx3Uq9udcyL2mR9RD6d3BCrDaMDHhy2yc0cuhCM+YqjNs
	Dq4+J1U8g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lX9Gz-00HM3K-K9; Thu, 15 Apr 2021 21:11:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX9Gk-00HM16-EP; Thu, 15 Apr 2021 21:11:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=hzANp36iuVSG+0nY48Uw2kEyuGobYOFTvaDygpInvZk=; b=VEMv2nNXMkmDYiCbbbjeSDI4EN
 lgMNJbf0s6zFZ1DelZgsMBJXkiaFP+S6EaAQxwhRwrmCbpKUv/bJSN7hDGgE/2wgld1RiOPJ0m/P6
 NF6wAm/bMPcNJ8Swecl1c2BYAgNHWDhz1VLY7tEBE23wYF1LtnblKvq/eHF8Ne4bM5s3vzsJuXRq/
 zbUElofpRMGgLvqUy/Nh0vxAvoF33WRauOWaOvlOAbaq3kLue4ak8JZAhDGFpS7Ur30cg0A+Qt64p
 9bfZGuT3dM4a8QPc3ggczvUvn4ShMOBRKxkUIc8Waq5PJozLxJS39napGFTJTCZT/beqbcUr4guZl
 b6irx+2w==;
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX9Gi-008tUW-3E; Thu, 15 Apr 2021 21:11:21 +0000
Received: by mail-ot1-f47.google.com with SMTP id
 w31-20020a9d36220000b02901f2cbfc9743so23877799otb.7; 
 Thu, 15 Apr 2021 14:11:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hzANp36iuVSG+0nY48Uw2kEyuGobYOFTvaDygpInvZk=;
 b=qEQVNptin8e5Vly7UNyL95IdYkEHVKO2i2PitKe9F5JWcE3x57fNTdUgxmmyOz7ksD
 141MhzlIkavVGdvitDiZMu/ezYsPE7xsZ6MGXornxErARIOHK3WMqbRXfWDowup166lT
 l9ukeUBq6Jf6AQQHukUxynlQvwjjj7YpnuqoJOf8rNlRbIZZQ79BTznFhMDA09tX8MmQ
 bGYHALRh4S5kUp5aVfzAlznJh3hbfYiZ5u1Z4wQGaDd8CaAZN8BNRyKZwTsdlzJ9gurJ
 a9xQjlfdiDXK2Ryjlatm7dGAu5I/5PiYzWusGdvjJHgm6T1UMo1ZU6rz/3eZa8pVx2Lg
 MeoQ==
X-Gm-Message-State: AOAM530FpwPXXD0UbCg72e/jpDgwoMCIurOT1I6YCyaHIUzFbXSBWlBV
 GiuGqzCEOqLVMnsArVff+w==
X-Google-Smtp-Source: ABdhPJx7M8OzPKhmXFXFq1RjJQv7cP2sRuHIZ80t44v8vBHwbXLUTAvz5SMUj6P2J2lxw9VvegLoJw==
X-Received: by 2002:a9d:de5:: with SMTP id 92mr922710ots.25.1618521078811;
 Thu, 15 Apr 2021 14:11:18 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k44sm775632ool.33.2021.04.15.14.11.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Apr 2021 14:11:18 -0700 (PDT)
Received: (nullmailer pid 1889333 invoked by uid 1000);
 Thu, 15 Apr 2021 21:11:17 -0000
Date: Thu, 15 Apr 2021 16:11:17 -0500
From: Rob Herring <robh@kernel.org>
To: Amelie Delaunay <amelie.delaunay@foss.st.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: add vbus-supply optional
 property to phy-stm32-usbphyc
Message-ID: <20210415211117.GA1889278@robh.at.kernel.org>
References: <20210413143141.12919-1-amelie.delaunay@foss.st.com>
 <20210413143141.12919-2-amelie.delaunay@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210413143141.12919-2-amelie.delaunay@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_141120_156800_E78A5863 
X-CRM114-Status: GOOD (  11.19  )
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

On Tue, 13 Apr 2021 16:31:40 +0200, Amelie Delaunay wrote:
> This patch adds vbus-supply optional property to phy sub-nodes using
> connector node.
> A regulator for USB VBUS may be needed for host mode.
> 
> Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
> ---
> Changes in v2:
> - add connector vbus-supply property as suggested by Rob
> ---
>  .../devicetree/bindings/phy/phy-stm32-usbphyc.yaml    | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
