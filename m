Return-Path: <SRS0=mSol=KJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0886BC433ED
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 10:34:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C62B6613F2
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 10:34:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C62B6613F2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EL77d1XPlgpNj+wsZdMJjmDNeVDc9/Y4X4xPm+wsPus=; b=Xd3fSAPA1qCb4l/3ZWOREv0Sn
	7JA+LGjNtSdnVLjMPbRMVa/5vAG1H1HvG7wJwLkooZYHIsvTv5gwbNWf2NQsquTmk9LDtuuZzq4y5
	HPIXZ54DnXC2tgK7hDc0TaTGemNqb2gDlXbOj6uxDbGx+5BIHqOeUiibfMjwBVyGWL99hw1FjxqMf
	kR9/2vA/RTlpgxmWhV18yjfgmtaUy/uQjVzTEhLQzP9VPt1nu8PHS6rd2hUehkKGUHfQtP4N7rhcU
	GTYrKkY7buiwrULTzni/qjbsp+6uHDOheIKhLA1X04ZeprX+nGTTo4T/8B4Ud6N9loyc2xEQP9bAY
	1/ThaNjwg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhV98-007mpQ-Vk; Fri, 14 May 2021 10:34:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhV97-007mob-6v
 for linux-phy@desiato.infradead.org; Fri, 14 May 2021 10:34:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=h4TTQGvv0kTCqP9V16/bL452A2WAd45GXz/6qfSH138=; b=FhSnhxZr4YQwM0s+Tg/iWDyLwe
 fWJvy5yf4AynxXjOhEPEAiqEpP5y2SWz5UHHiWT82DvP8ZECgOF2/ZTgMsEwaS3/gYWhCiFZ1b5DU
 fmO2q4VwQttOVu1pcbQYRCWTLBJlRQFQZhrT0JtcABQNMfQRIZXyjXDfbJe0489gj4kBv+sTekdme
 X/CHN6SSx7x824nUTIk/cqAi8MkKgDM/YVnbj7lwQXY4Fx2z025keH5XFvSmnbDA74gZFJDY7vGlC
 hT40cwpKuNlWgLPBTKhnc5OW12B/dvUFYWTKGLpB19C7X8dR54SY3kpsUSgIIlWgx1EO+ijaxbT+T
 VW/rkrbw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhV94-00BtxV-T8
 for linux-phy@lists.infradead.org; Fri, 14 May 2021 10:34:16 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 427F9613F2;
 Fri, 14 May 2021 10:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620988454;
 bh=MDt/JtauvGdhtTdBJNw3Sa4IR6v2OgRIZKcYn8oVayk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S8aTy1tbQfDpZ7uXrHpa7HCbo1fIoAjSRcxrnWq3lEKXdjTc2IB5uZNK/G4dOKu8p
 J3uE96Z3FJq6IqrGZc8dE+CdUFLNDSHHJ+BlQzKuReoRzMo0s1enWugdLv2TvFdOSm
 4BokGU+PBQwOF02uYmnAlJQqUg9r6YYJ2kzEYqEVG6Hwq3y7hCnwgqRDrqv5CqBZs7
 ynvPF7j9HghkLRWFPaUfxBQEhxoEG/LD9Sn2ongrG9PaRZ4U63VPwwXkfLfA59pRbs
 5jaHbxUxYmXxrNQjMU6zWAZwW5szfdGVvgSf3/ldVDnomwyLNntCIVrNu3MeS/TQMo
 eLP/KvGOOVkjQ==
Date: Fri, 14 May 2021 16:04:10 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Sergei Shtylyov <sergei.shtylyov@gmail.com>,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: renesas, rcar-gen3-pcie-phy: Convert to
 json-schema
Message-ID: <YJ5SIqP2gIzbv/na@vkoul-mobl.Dlink>
References: <0301c3a7dae9afde115b6437a11c23ab85cb8b75.1620648490.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0301c3a7dae9afde115b6437a11c23ab85cb8b75.1620648490.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_033414_976083_7F86032F 
X-CRM114-Status: UNSURE (   6.27  )
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

On 10-05-21, 14:10, Geert Uytterhoeven wrote:
> Convert the Renesas R-Car Gen3 PCIe PHY Device Tree binding
> documentation to json-schema.
> 
> Update the example to match reality.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
