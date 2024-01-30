Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6117FC47DA9
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jan 2024 17:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sd4AdZxga1Cdu4J3YNfNpGVpOZ3k7irFRfzwv/0yhsM=; b=aSuZG6QJXPrcRN
	JmICfZR1Rm+Lchp5WZN7g1yVo539CWSlKk2dBiGNd9dCyU3tyotGr5pshwDeZnfiIqT7hOVPKC5Js
	EONGUJu81QWuz1K1WJ3vZmotoOW+GLKVrXqpUlnGu+vA0k+omri6k8Q/uTmajMfYrOFzqiVxB8R79
	gqvmKPF5SG+gmQF/q+eAd7ua6ZNUt8KgywREc7+g9tdfPtICw1PvyRJTMTwl0Ciy5ZAsJI6jCVx27
	WZ2y2jxMElgglCb0jz9jWrkuaO2CuCP9UclcIu2YfUOmEHTieA7MpEANh1kf3ArQCJCvsJPLmfC24
	tlq+WrXsi0au9qeMdGWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUs5S-0000000Havy-0KKA;
	Tue, 30 Jan 2024 17:39:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUs5Q-0000000HavF-0lic
	for linux-phy@lists.infradead.org;
	Tue, 30 Jan 2024 17:39:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9510860E0A;
	Tue, 30 Jan 2024 17:39:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4C66C43390;
	Tue, 30 Jan 2024 17:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706636391;
	bh=0KVES+c/qiNdmAzRUl5nNBHLQTsiHe9IdeaRUX2obNg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kvage8bk5r4ujFcezK8yWQyJrSuBYVBKI8DfRgpBhCihmtGbM0dgrIWf0y77m7jvG
	 zm0ChOmsuPaVktmawlwL9fq2GlSlP1DfFL7WOV29hx/RykRfZw1ub4L0s7NvpNDhLb
	 VysS8NVGxd87hW0oPaX+Nq9ThFfc3CC8kie3YB76yE5XiNiVVRkvGcpbYITY7SqkY0
	 Tc1hNXW7dFdgMlxwcoHtsf0zuGjmHubAAHnqGy9FKLOlS4QR04cXFkPiviAzTN9vcz
	 I2hEYBqGlDG/gA7YH7PDwritXKbmd1+BUmUIRDTNaGgnruTleKK3G7NvuPV8OgvSZ4
	 GC6LYTK+zuH6w==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
In-Reply-To: <20240126-phy-qmp-merge-common-v2-0-a463d0b57836@linaro.org>
References: <20240126-phy-qmp-merge-common-v2-0-a463d0b57836@linaro.org>
Subject: Re: [PATCH v2 0/8] phy: qcom: merge common register defines in QMP
 drivers
Message-Id: <170663638848.685888.15892193883816117048.b4-ty@kernel.org>
Date: Tue, 30 Jan 2024 23:09:48 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_093952_304978_930E59DE 
X-CRM114-Status: UNSURE (   5.32  )
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


On Fri, 26 Jan 2024 01:22:34 +0200, Dmitry Baryshkov wrote:
> After the split of the gigantic QMP PHY driver, individual drivers
> contained common regster bits definitions. Move them to the global
> header. While we are at it, also remove register definitions from the
> phy-qcom-sgmi-eth driver, which is yet another QMP driver with its own
> embedde register defines.
> 
> 
> [...]

Applied, thanks!

[1/8] phy: qcom: qmp-usb-legacy: drop single-lane support
      commit: 982f92d5eea4e22e7c445ff5f508de1b63d8baba
[2/8] phy: qcom: qmp-usb-legacy: drop qmp_usb_legacy_iomap
      commit: d3e7e79ccbaa643c264e3e626e05d2eeeba7399f
[3/8] phy: qcom: qmp: move common functions to common header
      commit: 53d7776ea765ffd79f3ccfe627c2de3a0c7c2265
[4/8] phy: qcom: qmp: split DP PHY registers to separate headers
      commit: ef643d55fdeb30299367e0e15ef47945f60d5a11
[5/8] phy: qcom: qmp: move common bits definitions to common header
      commit: c01e03f97c4ea501fbd7dfe3eb7920a9a855e635
[6/8] phy: qcom: qmp-usbc: drop has_pwrdn_delay handling
      commit: fe3ec7600a16649812bf73f058e991429ccc28fb
[7/8] phy: qcom: sgmii-eth: use existing register definitions
      commit: df71879bec89541e1cc8886c6d85ca4d5d61b422
[8/8] phy: qcom: sgmii-eth: move PCS registers to separate header
      commit: 25ee21fc97db6cb7f476464e4aa8616652b3be49

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
