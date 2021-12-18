Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 648C7C433F5
	for <linux-phy@archiver.kernel.org>; Sat, 18 Dec 2021 05:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbS8wBsk3F7bKS0xXSK+G8MM6hCg7IZugW7blyfPbwM=; b=zM9xZEMsY/s7QP
	IjmSUU6ffJ/4e1ZOlUQexzJwsQoq9SkaDvAVnZmOTSjOvOR3yEVDZmhNlHGZjVyC3/K9dw9qniKzE
	oXf5ksznpvt1FemnK7yls5rr5zpVkaOwRE55sOQeahoAM09+u1s4S+92vnTMmIpx6OjAKVXIgAfY8
	DtPf7+ptGd3wM9SIPqMbCgCa/T6qW8b9DoVsI4S6/QzaiRWgetfSjm6ZapzObAOFY72R319yk3S4O
	l5TAgFljSBqMY/cyWk8ugcKfxpa9VQV6ypPiaJanhYhjeUUv36UjjU0POumyY7jT9o4TQ0miyITL0
	4flvOh32jV3DymSM+6LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myShj-00D3CI-N6; Sat, 18 Dec 2021 05:56:23 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myShh-00D3BM-AW
 for linux-phy@lists.infradead.org; Sat, 18 Dec 2021 05:56:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id B4882B81208;
 Sat, 18 Dec 2021 05:56:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DB67C36AE1;
 Sat, 18 Dec 2021 05:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639806977;
 bh=40BD0rEeUxsyZeXLtNYWQWdpEdH5tJKZ6kJAeyeq0fk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DpNBgpsHsn3npz9NyHeNUrO90r/hXNp86DEDH6o5VhcquHXwQ4ucf63+L9fNswtCC
 57CNtEhrRkJNE3Vzcb14O9HL7znZqTQQONewTIao0f1KBomDU3PWJpwigFRP0Zoa4e
 ILAKadMdf0yw2frm8HGs7mN1HgexU7d04d0WznPrDiIaNbFldd/nymER9wiyrLCQFr
 rGf7qQbiG4YLtYPVesp6qpb5SONEPc8bUNsrRnnik+eJhny5M7Lmr/cGwdfm6JqjCd
 fXTP43JMNql2sRpzMZn8blmr4VYc9JdAiNrG2RSTxRyIQ677Sr2M/fAtixSvk9S0Jl
 +TqBcFgAjL3iA==
Date: Sat, 18 Dec 2021 11:26:13 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 03/10] phy: qcom-qmp: Add SM8450 PCIe0 PHY support
Message-ID: <Yb13/fIR1vaaWIZB@matsya>
References: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
 <20211214225846.2043361-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211214225846.2043361-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_215621_527122_12B9C7A2 
X-CRM114-Status: UNSURE (   8.48  )
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

On 15-12-21, 01:58, Dmitry Baryshkov wrote:
> There are two different PCIe PHYs on SM8450, one having one lane (v5)
> and another with two lanes (v5.20). This commit adds support for the
> first PCIe phy only, support for the second PCIe PHY is coming in next
> commits.

Applied to phy-next, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
