Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86A84C0015E
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jul 2023 10:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3qfnXdANQ6nSrCmC4hMFWkul5KHfR9zDODucjbdHxJo=; b=AaaSOFN8ti0mGE
	giIJ0rSlefOXBNJVZ7IKFXjbYOYJnr7Nix7/DiL2JyTp/ac6TfATaq5VFo6195rju1lzL/QDothMH
	JlxHLuDmYgFu8J7fFv2xVxV9xgyzGAF+iiVNPk5DUxINskJD+oRTKxY+JEeu3nm0wB7YgkqIgKZl4
	TioIGL1B4+GN97ywTfYLk9Li66JO3CDGh8WDCuWW5x27j+jWG2YhsktYwdmAbV+WMHWi+KrrfJa08
	L6XD0c0at1GZ1iObW4tVcWoDJCOLK26sYd+BJMfsFq7qZXBwnR3PBRRj3nRbw4r58srwqXNvVR5C7
	1WceROj9oKhWeKQ3UNVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNtEe-003uuc-0m;
	Mon, 24 Jul 2023 10:56:16 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNtEb-003ut5-1Y
	for linux-phy@lists.infradead.org;
	Mon, 24 Jul 2023 10:56:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 44D0E6108E;
	Mon, 24 Jul 2023 10:56:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01995C433C9;
	Mon, 24 Jul 2023 10:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690196171;
	bh=nhiYOOlqYWW6vzgECE0M6nDHju7clmLHW8qTMCC7aZU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=jrC8yq/dHXAayYHzlJwe4D/32EaVTNbeCb8g9mYeP6aMu+GqrjpvYQNEwraOZzoNe
	 U5/5UxiA7DdXj+3FPGHCvOvROlLOnCzci0fVAiAbfgvpLY3fV0YRHCLNiChegpZIYS
	 0JB71pP1MRujoopQaR3pFSpXDyCtsfCaRX2fnLO3MBxmk8V7p8ZMiM6ORCFXAkYHxr
	 Ca5oUpATvJ5r71KFkOu8YuQ3wrSs9nhT2oV3j6WFaBCpHfCcomb1oeXfwsAn+Ou/XM
	 5Uqu4LZN7P8lpQc6Q6FJVsEBQjao9ji0iXRhvZcDymlLZXnAIa48xFBr8CBl+8NfnP
	 Xn942CKLFs9NA==
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
In-Reply-To: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
References: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
Subject: Re: (subset) [PATCH v4 00/10] phy: qcom-qmp-combo: convert to
 newer style of bindings
Message-Id: <169019616764.466601.16148746210108391264.b4-ty@kernel.org>
Date: Mon, 24 Jul 2023 16:26:07 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_035613_564063_E4F0DBFA 
X-CRM114-Status: UNSURE (   7.77  )
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


On Tue, 11 Jul 2023 15:09:06 +0300, Dmitry Baryshkov wrote:
> Reviewing several patchsets for newer platforms made me understand that
> having two styles of QMP PHY bindings causes confusion. Despite binding
> documents having notes telling that old bindings should be used for
> older platforms, it is too easy to attempt adding new platform with
> older QMP PHY binding. Thus let's have just a single documented style of
> bindings.
> 
> [...]

Applied, thanks!

[01/10] dt-bindings: phy: migrate combo QMP PHY bindings to qcom,sc8280xp-qmp-usb43dp-phy.yaml
        commit: 57a79ce964d76757c2fd21e097bcd9eb44884def
[02/10] phy: qcom-qmp-combo: simplify clock handling
        commit: 28e265bf84a8f885b3156f24dc246bf1d7bb40a5
[03/10] phy: qcom-qmp-combo: populate offsets for all combo PHYs
        commit: a542ae82dfdd1e84f84593161ffc586e72cc992d
[04/10] phy: qcom-qmp-combo: add qcom,sc7280-qmp-usb3-dp-phy compat entry
        commit: 486392f44dd96aeb34bbbc1b119bc5d332f1164f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
