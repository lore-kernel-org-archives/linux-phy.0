Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6FE3D1CDA0
	for <linux-phy@archiver.kernel.org>; Tue, 22 Oct 2024 05:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHa+1G2cMEfrxk+Oft/js9ipf2EKR4gFOfcQCs79AOQ=; b=in671Q4FMeOasz
	oh6MOSmm37MgO+tUPCLQNVJZeUT2xeQV12HRnXFNOlifZrz5e8jkLgKNZ4r92vYgf4Bo3fp9eGYL4
	Wq9i4UiuL6yMkUS5tkbwDfo5p0zCmCYhh4XRjfw3nDFBWU8DfMNMUt7KSMEarEAMzI5aPo92NyOK/
	cg6IHODEVUPmdDj9YUQFtlwIi+E68xxdfXjMwfeze7a4rEq5a1zBSC0w1SUeSR+aA1Jw69iNQJWbu
	n5njapFG1LCHWiR91Rh/CqxiRMBzCEjvj4qQwBZFoKzWf7qJlu5Vnc3bjOxmqdQOqa5Gz45IBs2T0
	QBHf6Op2UffgBTRR6fgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t37Zz-00000009gKB-1tXy;
	Tue, 22 Oct 2024 05:37:15 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t37VQ-00000009f1g-1rGg;
	Tue, 22 Oct 2024 05:32:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 56330A43DF6;
	Tue, 22 Oct 2024 05:32:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C6E5C4CEC3;
	Tue, 22 Oct 2024 05:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729575151;
	bh=kSF+9+ajZJQvMRaoOEcOAl1pa3G1ScWHQcL2VdO0LP4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kRJV0um5j1Vwy/rE73i8oqZeQHRGXEHoJP25oHgNMbBm6kh+L04cJYCRNRP3yvuU+
	 kMU4osyRQIZqidUchiqRxqyE6hvsBUe6QbtMPc6Amw6pJb5z+3DfxldZTdy3ogMtWo
	 FVb1LPFMjfkQ0wzhSGqX5rmonR9TeZfIyvpbtrMO6SM0hvem3rxkMc5Ex/N6B8yt+W
	 xkXIbE+8yukmpadDeBmn6AZGmmQPz1QcgBhtGOcZHdiwB5yOIGFxY4u3BTaS5dKhTf
	 Ge5ndPWB0/cPxs78mn6bEHOsEIYJZarVgY8xAqz2NodbrlkANXiLxjTwZ4T7iK6ckD
	 roBWYpacYc7dw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, UNGLinuxDriver@microchip.com, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Daniel Machon <daniel.machon@microchip.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20240909-sparx5-lan969x-serdes-driver-v2-0-d695bcb57b84@microchip.com>
References: <20240909-sparx5-lan969x-serdes-driver-v2-0-d695bcb57b84@microchip.com>
Subject: Re: [PATCH v2 0/9] phy: sparx5-serdes: add support for lan969x
 serdes driver
Message-Id: <172957514813.488852.12562116691017295702.b4-ty@kernel.org>
Date: Tue, 22 Oct 2024 11:02:28 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_223232_586575_9729CA9C 
X-CRM114-Status: GOOD (  11.18  )
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


On Mon, 09 Sep 2024 17:14:40 +0200, Daniel Machon wrote:
> The lan969x switch chip (upstreaming efforts beginning soon) has ten 10G
> SERDES'es which share the same features and data rates as the Sparx5 10G
> SERDES'es. Lets take advantage of this and reuse the existing SERDES
> driver for lan969x.
> 
> In order to do this, we add a new indirection layer to the register
> macros, that takes register differences into account. Additionally, we
> add driver match data for other differences that we need to handle.
> These other differences are handled by a combination of constants (eg.
> the number of SERDES'es), ops and if's
> 
> [...]

Applied, thanks!

[1/9] phy: sparx5-serdes: add support for private match data
      commit: d41bb5e00ec7ac2905ab115ed4bbf971aa593704
[2/9] phy: sparx5-serdes: add constants to match data
      commit: 8e65baf8ccc1fdc72645db15a10bd69209cccfb8
[3/9] phy: sparx5-serdes: add constant for the number of CMU's
      commit: 5206ba966d0b053bcd15e4fcba17284201ca6199
[4/9] phy: sparx5-serdes: add ops to match data
      commit: d61d42a91e322f73b8c68e22347469306b280008
[5/9] phy: sparx5-serdes: add function for getting the CMU index
      commit: f16df057837e06d16b5e5f978d79d80d70784b80
[6/9] phy: sparx5-serdes: add indirection layer to register macros
      commit: c8e4c8b7ea47cb9044c190e6148e994c8e04a34a
[7/9] phy: sparx5-serdes: add support for branching on chip type
      commit: 6158a32b431bc93f35aff03c9889417a7643da9a
[8/9] dt-bindings: phy: sparx5: document lan969x
      commit: c5699055472ead216c38236476c62bf43fcc3ca3
[9/9] phy: lan969x-serdes: add support for lan969x serdes driver
      commit: c0a0a7aec1b142e116c61f3d3facc8c80e97bbff

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
