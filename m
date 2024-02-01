Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B90C4C48286
	for <linux-phy@archiver.kernel.org>; Thu,  1 Feb 2024 21:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P2ZitpKT//WCFU7mTfes7C02JD42mrvkc90vqAuTOUU=; b=aO94tK02sZhmVD
	tn2WP2jBIpdjxsTGvmYTOQEdAKG82nWrcRbNHQgf28oMaktwaN+5sE169P7Is+Fxvh91j74NHEkzS
	SiglYlNsXrbeWPi8CEG84UHz2efeKaR0sVwip2zfomqtxOISyriu5JBFyoyqLk/MrBiTMgQtDbkkL
	UQ7QfQLcGM57b+R4PpXb6Gx8Ro4jT+Vpd5kgHyDxJwfofjUC3OfYzcq9AIvTe9wNqk/T9YHfxKd3U
	yNhmF4+iK5u+Sp5G4GaCkCCMNyy7CMOjjPs6Pf+ZfZwVY3PF4SNZB0vK16q/3KbqOVhSVtuDwzv7q
	ySHuEwKDnHw/m5cgoeRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVf0U-00000009SnM-1nn2;
	Thu, 01 Feb 2024 21:54:02 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVf0S-00000009SmF-0rHP
	for linux-phy@lists.infradead.org;
	Thu, 01 Feb 2024 21:54:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 94E8ACE2902;
	Thu,  1 Feb 2024 21:53:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F995C43394;
	Thu,  1 Feb 2024 21:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706824438;
	bh=NfBaMGo6hB6jiaOjT6dHDiMLAmyyZIWuGxeXvuI2ZLQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Nwnlre+DQliyR3yDN43ku4GtCIpI7YzmXvm6g45VudCwhaFRbTJTlOL4Gk9f9D3BU
	 Do+CB9KNt6Djxnw0o72Dl8azMkRsUOhOgbc6tZtbNGilXucAH/KY1FcGUQJ2a3NIkA
	 TSybYWSzCEFhMG1yEmp4X3BcG3D3jWueOoDHJFJKgQGR8lGvnOkfBT/wEz0Iu+LaZL
	 LkCjw+bvEapC0DZB/AkFjvZ6mr4INpX2XXoxkMJwlQ2uAZtXEBDUK+NltUGGMP5c0l
	 u1HSGFB3bVVOcKkode3uzIBcGOzlDMUsaZidZSBk9sBP+NbiRNvvagNW2WYVYJ4ayF
	 cu5wI+ZNQZ9cg==
From: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH 0/4] phy: qcom: qmp-usbc: enable SDM660 support
Date: Thu,  1 Feb 2024 15:53:48 -0600
Message-ID: <170682442872.248329.3260337490946339649.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
References: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_135400_435104_1090F717 
X-CRM114-Status: UNSURE (   6.79  )
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


On Tue, 16 Jan 2024 03:10:54 +0200, Dmitry Baryshkov wrote:
> Enable support for the USB3 QMP PHY present on the QUalcomm SDM630 /
> SDM660 platforms.
> 
> Dependecies:
> - PHY-related changes of [1]
> - [2]
> 
> [...]

Applied, thanks!

[3/4] arm64: dts: qcom: sdm630: add USB QMP PHY support
      commit: bb5009a24ec3f2f2ec1e2ed7b8a5dcde9a9e28d9
[4/4] arm64: dts: qcom: sda660-ifc6560: enable USB 3.0 PHY
      commit: 319a12e7c399df4316f54f6cc83cd6cdffb4ec4a

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
