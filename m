Return-Path: <SRS0=4oE9=IX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2ACCC433E3
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 07:23:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 914CC619A3
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 07:23:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 914CC619A3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yN4m/3/Q7sTw3RQmgTviAEIQGfyAnQ/pOLqmEhpe5QY=; b=HRJ0Jj7qsBSFyui6nEghT4Mio
	C6uXduaWaTts5N1LCb5NF6tkExt/EG4CNx1oNsSRCUFgptPc9a9krywKFt0RnepMkCTqyKZiswfts
	0ZgHiQzF4KDmPpK7I1LKcuIkmYOgX9XRsps39LNSjdzcXl2UzAsYO6Bg2k6ZFMpWv0DaCMhv+re4F
	n8UnuJQmNxNejKz5FZZp3a6I0JSOhNpHgjqpeU0YCfFLEhFSX+LXgz1EzN3Zs1rOBe3Fpx4vyW2T+
	B97IDvTF3GcTPSHHA32onUuZDEePZrOQGU2UaDhZYJQzd46UyztNA8nC349e1IsMxCUI2j88VTmKE
	NB/qb9oyg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPKLM-000mfR-RA; Thu, 25 Mar 2021 07:23:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPKKX-000maK-87
 for linux-phy@lists.infradead.org; Thu, 25 Mar 2021 07:23:13 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0D2FE61A1A;
 Thu, 25 Mar 2021 07:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1616656975;
 bh=nK8MnAmL5EIPeEqp4C8KpZ4a4cMEn3TYA9VUz9Xei64=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZsQoWg1WHzr5qSK/PSwwC8eqs3qSIDvZwAqShqcm7ZEtpZh6P+iQ31onAk/FQ2QRi
 Sb0SFEw/lH4KunxoMFo/bC2z75oAUGcKZO2bRTFk2yT2XAiQ95BAbnvahSF6Zz7mQA
 CzO/6SjioExJ9799Gdfi4LH/PqsQWx24OAuhZC7NCuST/JAbXsBeCaepE83fh9lNo1
 ki7cCnMRZ49Q3a4pAjQbHZ5TZFWTOh5eUOzoNKC49GOpHIb2X4Hnb/4hpFL+FrQW5V
 hvFkdWaxyHeA9MwkXLzD+foOzsdXNTcHA9byd1ICeqrhUfEBPhcv/gxwP8GoE3dODW
 dLJWZLh4TAR8Q==
Date: Thu, 25 Mar 2021 12:52:52 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sandeep Maheswaram <sanm@codeaurora.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <wcheng@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Doug Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 Manu Gautam <mgautam@codeaurora.org>
Subject: Re: [PATCH 2/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 bindings for SC7280
Message-ID: <YFw6TK+o0r3XdNcj@vkoul-mobl.Dlink>
References: <1615978901-4202-1-git-send-email-sanm@codeaurora.org>
 <1615978901-4202-3-git-send-email-sanm@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1615978901-4202-3-git-send-email-sanm@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_072259_865469_CF213A86 
X-CRM114-Status: UNSURE (   4.91  )
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

On 17-03-21, 16:31, Sandeep Maheswaram wrote:
> Add the compatible string for sc7280 SoC from Qualcomm

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
