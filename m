Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF840C61DA4
	for <linux-phy@archiver.kernel.org>; Thu,  9 Feb 2023 04:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZM/rT/pqLxAYp7S0wuQ6G5if7dOILvPeiFRIirY/3E=; b=l7HZwKQAl0xvID
	OiaHPPyWEADPqPx88Hp3jtfHSbxTIBCWfdMHrkvep62nFMch/nclJmtNhGdLpuzveQxOXIVMDWGPg
	D4KBE3ICJomrlZTX47fAIpj/apKcQ/v/A4c+j0sBDK9S7c2IR8Fspr9vc3U8r87/f4H9zYS4ke9Vy
	OyXbKwqLgb+aQmM0eVDIgDA41pDukKd4T9505xNx2YwlfdRmLPie/1LTkUwTa5p3v7gLCRzwundNV
	VqreaRHaVFeigYG6NiKOgGmygSF+4CH6ySdm28WrJ8gQEuv/1BmN8bhKmt93qg6WzpOPf0fW+z6eK
	BR1+A1r7Mo6SYKxAuGTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPyRg-0007Hi-AT; Thu, 09 Feb 2023 04:22:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPyRd-0007HL-6S
	for linux-phy@lists.infradead.org; Thu, 09 Feb 2023 04:22:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8D335618A8;
	Thu,  9 Feb 2023 04:22:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 497D8C433D2;
	Thu,  9 Feb 2023 04:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675916520;
	bh=yxNnMNwO/bUWsvA6c9eHATZsKZptWxbUJkDnkmisqTM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CgEyBUNU3OqUDrBSgYhru7oKhJwbl0QfdKuyJ/wfTEQXV0gRiS2Jt8adF4hXAEw3g
	 940SbcPt4mmPU48WckB2T/n+F0/KfJRFRaw6ZaGYNU9Lx8XIMSYAzWo+yjTt2KhDgo
	 LV4ZP0S1ngwfQ0Kdxn31H85q289qkR1SV+30MtRqOmJTibF/ArImM6Jl0pCug72gD3
	 C/VM4Gn5OqWOhVZeLiQg5KLsBUYOaPj8I/IRXB+5FSPTPmbV6/Q4pm10AkOvHiO41k
	 1almP0uAYzIItRAe9AibZodsvH2USjdFD06Fgv/Q08vIjFDBBUFu1hWZkyKfFtdzH0
	 n245E/hhcMjKg==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Luca Weiss <luca.weiss@fairphone.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-phy@lists.infradead.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	phone-devel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: Re: (subset) [PATCH v4 0/3] Add USB/DP combo PHY config for SM6350
Date: Wed,  8 Feb 2023 20:23:16 -0800
Message-Id: <167591660369.1230100.11949215646296439039.b4-ty@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230120-sm6350-usbphy-v4-0-4d700a90ba16@fairphone.com>
References: <20230120-sm6350-usbphy-v4-0-4d700a90ba16@fairphone.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_202201_297019_7791086E 
X-CRM114-Status: UNSURE (   9.40  )
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

On Mon, 23 Jan 2023 14:29:48 +0100, Luca Weiss wrote:
> While this patchset started out as just adding a dedicated init sequence
> for SM6350 since USB PHY init didn't work in some cases, now it's also
> migrating the phy config and dts over to a new format.
> 
> Also note, that the DP portions are pratically untested since TCPM
> (type-C port manager) and possibly other components aren't brought up
> yet.
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: qcom: sm6350: Use specific qmpphy compatible
      commit: 5ed2b6388b310521fdaa81cf5e075c20e9d0006c

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
