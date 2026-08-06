Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5CF5C55ABF
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 10:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Y3o6M5JlMJhL/VosdQJoa53iARDOpyIfPhlLjiXOo0=; b=uqKPu15Hw3GFP3
	CZ9pcaAsdN67R8v40IiD0gCyEWFkr0sX0loT4RsgDPiI7z19TmgoKfBtI3qz14aVdC9kxq/IWikal
	3UZ3DrDg8K50Klv7g5ul5s81bxs7Soher5KkNqqG8doBP6NCozCz4g4R5FkZnbIZ+QXaMTFHtwaJg
	/DNI22NaxccpXgJBEmKl5L6dIijxztrFuQcXcTQf8F/GjMRUwSGoKy0Nuvp94ysATgozvEVovECJ9
	RT8dm3ypG5Qvy6oa+EOqJLGknWNaagzuCqtSkaZ6KmHiuMQKUhHaF2Ig2zk6P3MN7PD4c/4BgE2iT
	kTEQ67qRBMsp9ctBZ5SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrv7U-00000005WyX-1jkM;
	Thu, 06 Aug 2026 10:14:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrv7T-00000005WyR-49So
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 10:14:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4AF02406D9;
	Thu,  6 Aug 2026 10:14:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7914F1F000E9;
	Thu,  6 Aug 2026 10:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786011275;
	bh=61XgkMM07gBRPH/k9a3fWkX3L6dqNGB3mydbDQoPPwE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=khBNYcVYFFAvHmUi1pMMmsz5k/31nzGhSQUv5gKP0AKWpKPJSa+wBeHLfjcbccA2L
	 ld2p2Qu3GyDKukusEUgt5DA88Zb6EmUreI5Fz09YiNTh/PLdKz2MqbXsQSmkNWrGXh
	 7kh3iPIAvgGb7ap+yTRHqHHW2avnJVNqa7SQgxcIDnQdbApjJfhKKBrED1dmlNXPdA
	 ycaSdqOF6hJjiCp/nkQDDCUCPfnOPqw/Nu6pnly5568YTlqn/5r2k/jEo4/2DE0QSn
	 beV5VRWWmqtYl49AsB/JC7Fhiqm98gxtoaLGDNmOewqLBPjwE9UREHHP3zltB2G0ts
	 W+S4oI2+YD4Bg==
Date: Thu, 6 Aug 2026 15:44:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v4 3/4] dt-bindings: usb: qcom,snps-dwc3: Add Hawi
 compatible
Message-ID: <anReh4gzTjkD4u7c@vaman>
References: <20260803091441.3040830-1-mukesh.ojha@oss.qualcomm.com>
 <20260803091441.3040830-4-mukesh.ojha@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260803091441.3040830-4-mukesh.ojha@oss.qualcomm.com>
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

On 03-08-26, 14:44, Mukesh Ojha wrote:
> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> 
> Document the Synopsys DWC3 USB controller found on the Hawi platform.

This one fails on phy/next :-(

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
