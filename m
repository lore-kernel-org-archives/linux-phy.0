Return-Path: <SRS0=T9my=PI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EBADC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 15:34:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 27D3161391
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 15:34:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 27D3161391
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMZJX0jkweXY1peMa4efTBKlGW3d1s6FKbwi7F5UH/Q=; b=W+1KjSKXg/9aOA
	BuinZiBcKLKvN5XWQEteBpVJUn0KzuEnyiE5POVgVoHEi9Yjg5xm7JLkJaYq2cxRPO2wio5ttJEkx
	IBb7ZT8c9DVLiuZj5EYEvxbagNbrOp9YlMkFvBpgepIgR7bel5I5x0xPvsG6GM2Ha4bpm7OXMTqwE
	D5bnLsyWmCCvLBmM8yLyHipJ7F5dP84EFFwnIJEbXdpAloNLbrWaBCNB6QdvTFI3tl9KlQ5TCtkLn
	PFXC920ExMwQsjRbKl+C68NfSkpVF7evIyvGEnGxWJ2dgGbl1rifQMz6qRxnpYlRvL7tARBoal21R
	KwSW0rBzIAQqCgNXqdFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdDbo-0054P1-E8; Wed, 20 Oct 2021 15:34:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdDb8-005457-UF
 for linux-phy@lists.infradead.org; Wed, 20 Oct 2021 15:33:48 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 33CFB6138D;
 Wed, 20 Oct 2021 15:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634744026;
 bh=jBdWab4OKhYc8JaRPHjIC13TNSnNaWnujTT2HR8+MKM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B9idrXL7JpUuXPnOOCwXygUCkvEED4EztCPUYeEKntUYf26Hvo2zODzUwx1NCxjMd
 y/+QGzCd4UfPUwIB7fS0PdGZufeejaL/q8495wnjhMynw80plzsc2znJVG1MsnExnX
 6/qMPpe0Y8/WdWBo2Pjucjyz0LA0nKwS2tafQXRDXT6vzqzAAxWqxn6GlEKNYbUn09
 7QQH06EeVyxaY6k4yUKQuWXiwk/zV697ptqCa0sUjFB69vhUMNzPS9z4MxmSQJsPIW
 qpTKyEwP2orU1+n8i3kMbR1tCYy3UODUVwj9ccpOaIUxkHJcMoFIOAeHIr/D3LOO5Z
 dVi8I3uY4d/aA==
Date: Wed, 20 Oct 2021 21:03:42 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Shawn Guo <shawn.guo@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND 02/10] dt-bindings: phy: qcom,qmp: IPQ6018 and
 IPQ8074 PCIe PHY require no supply
Message-ID: <YXA21jWvAugDZikX@matsya>
References: <20210929034253.24570-3-shawn.guo@linaro.org>
 <20211020130634.26194-1-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211020130634.26194-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_083347_036957_E62DACF9 
X-CRM114-Status: UNSURE (   7.00  )
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

On 20-10-21, 21:06, Shawn Guo wrote:
> The qmp-phy driver suggests that 'vdda-phy-supply' and 'vdda-pll-supply'
> are not required for IPQ6018 and IPQ8074 QMP PCIe PHY.  Update the
> bindings to reflect it.
> 
> While at it, also correct the clock properies for IPQ8074 QMP PCIe PHY.

s/properies/properties

> And as the result, 'qcom,ipq8074-qmp-pcie-phy' and
> 'qcom,ipq6018-qmp-pcie-phy' share the same clock, reset and supply
> bindings.

I have fixed that up while applying and also picked the Ack from Rob
(please pick those when resending)

Thanks
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
