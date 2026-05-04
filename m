Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FE65CD342C
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 10:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/YHibu1XDVCmMntQ6iiY16NRyoehe3QtN03Wrb7ZY8=; b=4rp8aVG1RxpXcM
	iWlyxIJNOogxJKb2g5rLfqesyS/V1bRU32Da6Kb8agyvvF7/DoWWYEdDWnv8LepoQCkPRrkgpv4Iy
	3Kl77RiKjxVugSQkCJjxDo9TORtcfDE6EUFVp7C8PiX/QBDTVKMs1cqhLyBxAAsrQFSaJ8ip7KnaW
	NwxnecwQn0WnonpNYTu9khQX2VZzAwrymxpgMUFc8/faK3zaSktdbq5XDMF3hAsCM/ax0/qIQzEYW
	s/B2+3ZXQw4yccp5syO/RtN9BQOYabqbSm1u49Woi7a5DOezl1YXYezG+5ABXe2fXH8ozbDfSsKf/
	f+rOS2pZnGJ16oEGoXKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJqJT-0000000CtQx-3sM4;
	Mon, 04 May 2026 10:14:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJqJR-0000000CtQG-2F4j
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 10:14:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4258343A82;
	Mon,  4 May 2026 10:14:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB9DEC2BCB8;
	Mon,  4 May 2026 10:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777889645;
	bh=RG4DEVEEpMu7xdDX4buQKKb7FInJnW2Wd6L2FT+fV4M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K5Q4KhbSGkz8bO+AX2Ik3zGT5w6v8QFH/VmeLDBhfGlvY5DOfs57AvshEO+ADKI2s
	 EPOstacNa5uE0mXvqoI/FUkANYeolxPIGiN4WUHtsDuTYo6kvF8IcrhUqWVTiucqYR
	 VIwbeenphl1PhnEvuiuLzprwJslA69HrmPF7T5Gl+rHece+YmNKgY/WjufnrU+E64E
	 Ixa5wKuJ6RtWgQER995aCIKry4RzXqg1RNx3kSWwpBHJHaCoMTGjpoxygrESDHj8Am
	 NBxaLbEeOi2s4+bqIy8sCtkNPxryx4aKDD/T4h4j+w+Pd0THK8R7ZpX4cC+Yv02gTf
	 QipQGJDR+o8WA==
Date: Mon, 4 May 2026 12:14:02 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: Re: [PATCH 2/5] dt-bindings: phy: qcom,qusb2: Document QUSB2 Phy for
 Shikra
Message-ID: <20260504-manipulative-stimulating-unicorn-a1dfe0@quoll>
References: <20260430-shikra-usb-v1-0-c9c108536fdc@oss.qualcomm.com>
 <20260430-shikra-usb-v1-2-c9c108536fdc@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260430-shikra-usb-v1-2-c9c108536fdc@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_031405_634289_8E341D84 
X-CRM114-Status: UNSURE (   6.31  )
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

On Thu, Apr 30, 2026 at 05:20:27PM +0530, Komal Bajaj wrote:
> From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> 
> Update dt-bindings to add Shikra to QUSB2 Phy list.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Incomplete DCO, incomplete description of hardware, mixing subsystems
without any need or explanation.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
