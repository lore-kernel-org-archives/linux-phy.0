Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C04DEB64DA
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jul 2023 05:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1f3KUkfRWdTtWBAoPBDOIA4T4s6k9JRUyB5pkDkOtdY=; b=o4+KwH1lhNTd/Q
	UQiM5zEQTll994jvJ26CGc0p0KyCSLGC4XENtX+xQg3Bn7CYT0vDy5sNgkngrzjhsEb8w5x/mn6pA
	Im/7p7jkDrCx7NfCijtcRHVqIlSCNk3pq/VdCJb3J4dH6fHUOsAPBMq4sCgcDQ6XtOjTzrYurdXiR
	Pgdfdz+Yam2KAZnQ9YIMwYEZ8zG2bHQGo1MmY7VZ80dF2VT1nC2zUI0hjnUvzNmMN6rCIkK5eWhxs
	GT3hX7opr6wQWzLLwLrVtnmRwQVpndmkStqPszeh5qT3ezc6gpyE14QnJPsrlI/pXokut0jOFxLuP
	hTXVwiAvRoeO0BscVazw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJRzJ-00GYP8-2K;
	Wed, 12 Jul 2023 05:02:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJRzG-00GYOe-34
	for linux-phy@lists.infradead.org;
	Wed, 12 Jul 2023 05:02:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7DBA1616DE;
	Wed, 12 Jul 2023 05:02:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74047C433C8;
	Wed, 12 Jul 2023 05:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689138122;
	bh=Ae7cOg5RkBIZRVxFbdZkfbrVtQR3X8p/Y+v1CZtKDMo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ouEdBMAz2UQ7tupTVCr4besFEDjtGFSzn11Jgf7Wx4mJmCrE+IOJ15fDlx5rwNDyD
	 tuyiSVERxe4J953qGPMiyyhZ07rwR+Sln1XQ+OtdIYWrK6FIGLieHRYdyq/kfZ59UG
	 1hNFQ5kbHe2OSSt2KKaZOfFPa4wLceSG1c7xjmWuuu/pClyg4LDXl7QlIJkuKiWayF
	 EO66sZ8AwuQuQPLmao4InsPygW2EyiW2g5XaQjmCGudF0EHVpvjSMzThAJaOKXD/w1
	 DvPlPODekTLrHTevG1PPgoHRaOXQlLw/eBFTbKhSYnWAOaGxKE0D2rLdKgGL2L6rbh
	 JArRco+F+Xe+Q==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
References: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
Subject: Re: (subset) [PATCH v4 00/11] phy: qcom-qmp-ufs: convert to newer
 style of bindings
Message-Id: <168913811801.211971.544990626696177536.b4-ty@kernel.org>
Date: Wed, 12 Jul 2023 10:31:58 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_220203_029326_0250E126 
X-CRM114-Status: UNSURE (   7.54  )
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


On Tue, 11 Jul 2023 17:51:42 +0300, Dmitry Baryshkov wrote:
> Reviewing several patchsets for newer platforms made me understand that
> having two styles of QMP PHY bindings causes confusion. Despite binding
> documents having notes telling that old bindings should be used for
> older platforms, it is too easy to attempt adding new platform with
> older QMP PHY binding. Thus let's have just a single documented style of
> bindings.
> 
> [...]

Applied, thanks!

[01/11] dt-bindings: phy: migrate QMP UFS PHY bindings to qcom,sc8280xp-qmp-ufs-phy.yaml
        commit: cd296e74242918f91bb86da0c67d8456338cbb16
[02/11] phy: qcom-qmp-ufs: populate offsets configuration
        commit: e2d9dbc01cb305af625c6db83c451645eef64470

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
