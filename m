Return-Path: <SRS0=czee=OZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AAD9C433F5
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 06:34:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2B35761251
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 06:34:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2B35761251
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WrG8BC0YGjdVqH6E7Qb5bW2e+cHox4tU6jPcE+QrIA4=; b=Xxr1EofA9FnhGF
	TwKs238i36apMjc+gssVsDqW91F3xaCPObjb+gr3psU2lGMAKUHINNq+/1cvL+dYqHVUWnKsnVdTk
	JdRC5yr1tH9TTMnnM6jaF3t4bASFV3/2fQRco2gZjkyByQOOw99nahXhb/jRZAJzq6c5XAUi7pH+9
	yNYHLYDKi2sLqciyGSMdhZNDhBYzrRhm7j6WdOCUbUNX1BUVVxB6Kl/2V0esnD6i4wnWiCFF0y5jD
	5kA1TccqhXWwRR+3qKRlveRqud3gxPiSXEbwTsb9HAVY+95L/IECFwhxZ8oKHnHugJDHcYbLn9DzD
	vy+8FiyFIv4oKGjW8qow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXe28-009AV8-OT; Tue, 05 Oct 2021 06:34:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXe26-009AUU-6t
 for linux-phy@lists.infradead.org; Tue, 05 Oct 2021 06:34:35 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0D05861251;
 Tue,  5 Oct 2021 06:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633415673;
 bh=AstlIYtQpZekEfikMl1e8m7Syzc6J7RPE8yoOqvD4B8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AjlhIlJOzmzm0Q+KhaLGgoPnYIC7LWUM2z/38IoTBtHHMpDdUsCVUT3UBBrtNQfsM
 IGTaLnR5kmqk6WXlv/Y/LDFvQQ5uRqfhS1pu/ivtEnNXxR6b99mKh2Y04mvXBd3qlM
 mtadUBKnWDLqIAikTS4/eNlc5ZFrYnSlQfZ9RRcJsVfBIVWO27knBhUgy/o419cSE5
 /iQrL5d+6WzRG8s+BBtjnoGrruoK6fFvbzFQyQf0EkPNczq3kq++IGOJIdmyWUQ+GX
 wrOvwKriROh5SB41BKrizqYHLVv9fyIp64z4HPKvjM0AKmwmXkU5p7/lCUaTqTqLHQ
 n0vGJ2yHsNUlw==
Date: Tue, 5 Oct 2021 12:04:30 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Shawn Guo <shawn.guo@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/10] dt-bindings: phy: qcom,qmp: IPQ6018 and IPQ8074
 PCIe PHY require no supply
Message-ID: <YVvx9jEGS3g9LD8X@matsya>
References: <20210929034253.24570-1-shawn.guo@linaro.org>
 <20210929034253.24570-3-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210929034253.24570-3-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_233434_309747_6A012A9B 
X-CRM114-Status: UNSURE (   6.42  )
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

On 29-09-21, 11:42, Shawn Guo wrote:
> The qmp-phy driver suggests that 'vdda-phy-supply' and 'vdda-pll-supply'
> are not required for IPQ6018 and IPQ8074 QMP PCIe PHY.  Update the
> bindings to reflect it.
> 
> While at it, also correct the clock properies for IPQ8074 QMP PCIe PHY.
> And as the result, 'qcom,ipq8074-qmp-pcie-phy' and
> 'qcom,ipq6018-qmp-pcie-phy' share the same clock, reset and supply
> bindings.

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
