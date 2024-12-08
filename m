Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD508E77173
	for <linux-phy@archiver.kernel.org>; Sun,  8 Dec 2024 17:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3OroajC3UPjgC4Iix4fZkO8UKV4G4VPQ7SSXmMYTxqw=; b=dc0hUtMjl6vpae
	If4wx935tSTYlG9yTIfxSV4ZmGPIUoRyH232fOhPlqGuATZnFXyBRCQx0QCgLeaaEkvdYvQqFJgQi
	RmY2oUeeNSlpE5CLvC/wCvIYb+fS4F71aDTTOxyVC0NJdkwZ0TzBhUTzB/2Qpd57k6u3JIj2KGK91
	/GtuQdi3i6z5hOJKpFDyDGXwyZ/c92xj9oaercU4IfffuhWMvan3t4C9yTWo/PPpmKIChwB9wuryy
	F1E5kmW8aIenn6QKLOJuDFGn12BGgNq647QMZWWedZEJsAXwXV4bpYqxFzZH8t6h0/FTa3aGXmhus
	YFnIItqBO2HZeP651acg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKhB-00000005c20-2IKy;
	Sun, 08 Dec 2024 17:03:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKgG-00000005blJ-0yYL
	for linux-phy@lists.infradead.org;
	Sun, 08 Dec 2024 17:02:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 274C35C3F14;
	Sun,  8 Dec 2024 17:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50046C4CEDD;
	Sun,  8 Dec 2024 17:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733677371;
	bh=HCHmFGhqgwiw+/GQHlPW56J6axCw7STGcQpRvYj2W3w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=VmCNVXhVyAuGESKLdZYpRnoiBVbx8uUR7z2HN0Taja3QoXPvanJ+R9dgLHpQfT9t9
	 f11/8V0csqwELM5/x6LacT21ffpxnjsd7/mQiJqIog8Od37BQGQhurOfTAds5TKUUl
	 SErXJUCFRZ5Y8q4QCL6OtNFxnY8urDxVYILGicA5x1dDItWnI9EBP9qZoWGe3Deyw3
	 AiaGab+8AsXM2vj9RCN7seMvGnXRv5UrFXJyIOBO7ylEQhU7VyGmd9oO8SSLfXAxBK
	 e08yPoxK2+xujhmjiQFTkgLW8OSS2nhwWg3R9HEbNAyljkctlR/I7cQvz54JNbdpv5
	 JT1Dc9PThP6dQ==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, robh+dt@kernel.org, manivannan.sadhasivam@linaro.org, 
 bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
 quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
 andersson@kernel.org, konradybcio@kernel.org, 
 Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: quic_tsoni@quicinc.com, quic_shashim@quicinc.com, 
 quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, quic_tingweiz@quicinc.com, 
 quic_aiquny@quicinc.com, kernel@quicinc.com, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Krishna chaitanya chundru <quic_krichai@quicinc.com>
In-Reply-To: <20241122023314.1616353-1-quic_ziyuzhan@quicinc.com>
References: <20241122023314.1616353-1-quic_ziyuzhan@quicinc.com>
Subject: Re: (subset) [PATCH v2 0/6] pci: qcom: Add QCS615 PCIe support
Message-Id: <173367736385.1042266.3592021837823660516.b4-ty@kernel.org>
Date: Sun, 08 Dec 2024 22:32:43 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_090252_317557_AF4E36B1 
X-CRM114-Status: UNSURE (   5.54  )
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


On Fri, 22 Nov 2024 10:33:08 +0800, Ziyue Zhang wrote:
> This series adds document, phy, configs support for PCIe in QCS615.
> The series depend on the following devicetree and smmu.
> 
> Base DT:
> https://lore.kernel.org/all/20241104-add_initial_support_for_qcs615-v5-0-9dde8d7b80b0@quicinc.com/
> 
> APPS SMMU:
> https://lore.kernel.org/all/20241105032107.9552-1-quic_qqzhou@quicinc.com/
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS615 QMP PCIe PHY Gen3 x1
      commit: 1e889f2bd8373229ce48be5860b8383e75393e13
[2/6] phy: qcom: qmp: Add phy register and clk setting for QCS615 PCIe
      commit: 21364b0fe378646fa301f29f714140a1f465561b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
