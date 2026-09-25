Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC831C9830D
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 13:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GIE+a2mTD217G/zcVLM7rJlBaUwf6Ox4Y7FZjhqMsjQ=; b=LFAm3cu2g/ped2BH+KH0//Fd27
	LkIQvxr8pLTuSHFQQ0uii1glLnhXp1z+PkKz791bfkI71ntpT+JVYvvteCMHld1PoDjL4sW5vfNky
	cjaweBXNDtA1TYW1kNxChJoqmJ8EQEh9I9CtWD2sZwX3gC2SRL4qYho5xnFzi5xmYRpSndI/d+EWz
	fZmw+pWy4P2aaINxmhkWc0rIsGQrWKrHo8/6iFamqx96y6l1BX17neFjPICt3iHorK0ZjZktLuGqT
	MftGIPoyfHLVdTlsik27dS/cijJr5+igJjPnQQHWxIxd793fj+euQMphkMz9S2rTDbn3YseysJRE7
	l03ze4xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA6SY-0000000DVlL-2Ekm;
	Fri, 25 Sep 2026 13:59:30 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA6SX-0000000DVlD-1G5c
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 13:59:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8AAC960239
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 13:59:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 437581F0089A
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 13:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790344768;
	bh=GPWZRmhcG4L6sCneQLtwuZopOUOlyZbjcJe1r//BOTM=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=gfz7WzBJBYZFYwRLVg9m4e2E3Nc46fPW/m0Vfas57bUwV+/M48PntiSybri0K5itW
	 TKbPK6jH6ZGtjWJQ2ZmgXrrTYuWBDSSq/pnuPLAo8GnszMcJxqjVxlcVG0nxGZ3Fe5
	 76lZfKqPLTeZ37uVazZ8vRTPvluBEQoD99TgBtIZEQHMtwacPjdPZgz8ydzhpWonrq
	 c+AnqlOhkOznB2zkn5tHSsf/wpG1Uzi7UsHJUr17tM53Z3hMqOpT9pIV2fWpbIw+r7
	 SGRTi4FlBG2Ay8MGZf8pzhOjXlcya0B6wlflZyR3ndLvkMmk+41oGmQtEzsS8qjViK
	 ckSb1COlXJrIw==
Received: by mail-lf2-f12.google.com with SMTP id 2adb3069b0e04-5b8e93611e7so652741e87.1
        for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 06:59:28 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBx7bdTqlttG1+hQs1Sb0vYZXcul4bf+WJLJIBJs9naCvfGHYfYFDyR/JQE6uB087M6Scq/4fDaNElU=@lists.infradead.org
X-Gm-Message-State: AFuF++lsqT7G8wCS2vh4HSmhZIikuwe4ehgf7Ro0FzemGBEppy+KK/gi
	h1CPkFrjBAx07FiT6wo6XvUz2PsMCRSOJ2EENq9ByqP8iu6GziA0FpMm5PcFgHd/PtQidDSwZFR
	7f8O4mM/o38LuLEHfsy/KcHL66kXDqERegcFH0zoGRA==
X-Received: by 2002:ac2:4c52:0:b0:5b8:c21e:28e8 with SMTP id
 2adb3069b0e04-5b8e6e2f6dfmr755919e87.19.1790344767005; Fri, 25 Sep 2026
 06:59:27 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 25 Sep 2026 13:59:25 +0000
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 25 Sep 2026 13:59:25 +0000
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260923-nord_ethernet_serdes-v1-1-f8ac1c487882@oss.qualcomm.com>
MIME-Version: 1.0
References: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com> <20260923-nord_ethernet_serdes-v1-1-f8ac1c487882@oss.qualcomm.com>
Date: Fri, 25 Sep 2026 13:59:25 +0000
X-Gmail-Original-Message-ID: <CAMRc=Mc9ked7RREYxs6WmvwLwGJ2VR0P7gmPZje7UdjmDdnfvQ@mail.gmail.com>
X-Gm-Features: AclHuK9fS4K0zcCgetZTHU9RDo05M52hg3_eHwVe9TjKtru5OxLuiE6W4yOuOVE
Message-ID: <CAMRc=Mc9ked7RREYxs6WmvwLwGJ2VR0P7gmPZje7UdjmDdnfvQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,sa8775p-dwmac-sgmii-phy: add
 Nord compatible
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>, 
	Shawn Guo <shengchao.guo@oss.qualcomm.com>, 
	Zhangfei Gao <zhangfei.gao@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>
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

On Wed, 23 Sep 2026 02:04:17 +0200, Mohd Ayaan Anwar
<mohd.anwar@oss.qualcomm.com> said:
> Add the qcom,nord-dwmac-sgmii-phy compatible to the Qualcomm DWMAC
> SGMII PHY binding.
>
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
