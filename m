Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32BAFC54755
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 13:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHeMHTcFhQuniElOQVi+eGS0DefWLLQux9AcSpV/rZY=; b=KM19kbKFMmW0ip
	JqJj2B5UXcRiS2Uz3QUzZyUCno8EpIQnQcW605DkHE6qxhCcDmqckW2m1tpY808qvgGqDI5cmhQuh
	2kQRNlBSMxBvDgxyUk4xFG0hFQBAJUpm5J7aPuuMD1Y9XUAhLXzoaqnxYmmE5NAVk0JXHW2cf38+i
	f6gOJgi0ycpjvOPpef8rrqe5W6PWpqUX2sJkabtWebTz3nQlzaZWw/nBYVq2KJdU959zpZxbsan1L
	T5ONgeO8xaNOcGXy2bgLinpeUkKNlStJzOJwD1EgZB2pwPuiDbvXFPNhPGKSqt4xvcfh9I1AoMYTx
	EhxoVS0clbc5wOJ6koMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFCYV-0000000FIFM-3doV;
	Wed, 14 May 2025 13:53:55 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAQK-0000000EuP9-0qt6
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 11:37:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D98514A63F;
	Wed, 14 May 2025 11:37:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1FC9C4CEE9;
	Wed, 14 May 2025 11:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222639;
	bh=He4lmb9HVm1YV4uevPwCKHBfctkNUFoVlye5myyYtkM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JVM0VeAWzv9ssis9vK5QubwKwxvsBARYIFJGv/iN5pscusgaP6zYl8rLqlVtrvu+J
	 svFrw/z0Qvdz8K47pzcl0e2Tf9CQrIET3JaJuUsrThvaJ6Sl83CZKc71U1e8R+TU5c
	 682neGjxqp+TCvzGJ5+Syo3HQVoHvR5dl/CvQnm78FyQbF6j556L6NFiqT6JAwmmw8
	 eSHHlVzK33oo2gasfnh95zDf3V8vPwM1qHV7Wng3aIGM53H2bMETfNPbTj78sWwwNP
	 L4NhKz/JEWgNaTtYfBAQX3MqJ8YkVZ5favIBIeJaQMTCWK1pmoUK9LggCmaqS3Nuqg
	 Pzt64ilg9pQCw==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, lumag@kernel.org, quic_kriskura@quicinc.com, 
 manivannan.sadhasivam@linaro.org, konrad.dybcio@oss.qualcomm.com, 
 quic_varada@quicinc.com, quic_kbajaj@quicinc.com, johan+linaro@kernel.org, 
 Chenyuan Yang <chenyuan0y@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20250414125050.2118619-1-chenyuan0y@gmail.com>
References: <20250414125050.2118619-1-chenyuan0y@gmail.com>
Subject: Re: [PATCH v2] phy: qcom-qmp-usb: Fix an NULL vs IS_ERR() bug
Message-Id: <174722263664.85510.7245285831911062529.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:37:16 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_043720_267178_40C4C2B8 
X-CRM114-Status: UNSURE (   6.37  )
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


On Mon, 14 Apr 2025 07:50:50 -0500, Chenyuan Yang wrote:
> The qmp_usb_iomap() helper function currently returns the raw result of
> devm_ioremap() for non-exclusive mappings. Since devm_ioremap() may return
> a NULL pointer and the caller only checks error pointers with IS_ERR(),
> NULL could bypass the check and lead to an invalid dereference.
> 
> Fix the issue by checking if devm_ioremap() returns NULL. When it does,
> qmp_usb_iomap() now returns an error pointer via IOMEM_ERR_PTR(-ENOMEM),
> ensuring safe and consistent error handling.
> 
> [...]

Applied, thanks!

[1/1] phy: qcom-qmp-usb: Fix an NULL vs IS_ERR() bug
      commit: d14402a38c2d868cacb1facaf9be908ca6558e59

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
