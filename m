Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73221D132D5
	for <linux-phy@archiver.kernel.org>; Mon,  4 Nov 2024 14:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/bfQesymcAORW7CwtAuHy+Jn0QrnLEHZcJyapz+jjE=; b=uNG/TZ9d0sxa/p
	VBc5GCsnFpKBvkzGoIc5kHU7LQvv1Ctv/xx0sX+42tZd1rU4vFBIRzOvY98YQol00ICDdlCNSeUaY
	WiXijOMpKC/ChBVcw00vVN7I1rPWTmteIBfaCNmUHU2RaPmxsNDYS6BM3rv4yvaS/n/aFH5QHJ73L
	wqyMsZGRBIgwGteHDrjZQTyLpZr4P5XrjrARFK9qZLGxRXEGHVrNZWZszrKbTelOmcVNKlWOkKwWc
	ag1qZV4dHQ1o7azvOcjMvLT6/BLLvjlmbs3xWi/oAXXiUfubMMj1vL83JpTyi8tUSCeBPWJzvzwH2
	SjMxyZioE2H8wAN/YsLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7yRQ-0000000E7Z1-0lyw;
	Mon, 04 Nov 2024 14:52:28 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7y54-0000000E37R-2qQW
	for linux-phy@lists.infradead.org;
	Mon, 04 Nov 2024 14:29:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 94EC3A42C6C;
	Mon,  4 Nov 2024 14:27:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D4ADC4CECE;
	Mon,  4 Nov 2024 14:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730730561;
	bh=EXddGjljuXfiyst3teC3kH4+6NzpEAOhemaF87o1HEE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VI6LSM0rNQv+75kEV8qCjeTF/lBf5PCB1iwVeAFYrDNCyw0yWDtIx0iBL4qJIBo25
	 w8TW5FpmWM/N67WF8UWtQihC+CaXwAMN6/TFERLSNW50+ffDQLSKD4s+nc5CgMJWCE
	 fjdJcsNldAlHHwXuMlD8oDawBI/9rMVrNFAbIeRh3HXKz1nophDh1nUNnpa5qvyGDe
	 cZKn/6lsOF2ptEXxcLVlvlB7UaKemEq30MqnxxW69dH01/XdghIDGarEGGpdbsWbuH
	 i/kg9r6SQm3BmPTTntIEvjwDmqXV1EgMeCUzvzObmLN5Tr/rxMyk2jXFsJNkjVzlZW
	 IUuKPhAtpBUOQ==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t7y50-0000000087N-0Es2;
	Mon, 04 Nov 2024 15:29:18 +0100
Date: Mon, 4 Nov 2024 15:29:18 +0100
From: Johan Hovold <johan@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	johan+linaro@kernel.org
Subject: Re: [PATCH v8 4/5] PCI: qcom: Disable ASPM L0s for X1E80100
Message-ID: <ZyjaPtGtRlsIO64b@hovoldconsulting.com>
References: <20241101030902.579789-1-quic_qianyu@quicinc.com>
 <20241101030902.579789-5-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241101030902.579789-5-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_062922_817068_243A5301 
X-CRM114-Status: GOOD (  10.68  )
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

On Thu, Oct 31, 2024 at 08:09:01PM -0700, Qiang Yu wrote:
> Currently, the cfg_1_9_0 which is being used for X1E80100 doesn't disable
> ASPM L0s. However, hardware team recommends to disable L0s as the PHY init
> sequence is not tuned support L0s. Hence reuse cfg_sc8280xp for X1E80100.
> 
> Note that the config_sid() callback is not present in cfg_sc8280xp, don't
> concern about this because config_sid() callback is originally a no-op
> for X1E80100.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

This one should also have been marked for backporting:

Fixes: 6d0c39324c5f ("PCI: qcom: Add X1E80100 PCIe support")
Cc: stable@vger.kernel.org	# 6.9

Looks much better now either way:

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
