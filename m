Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01B6DD37499
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YV8OjwbhRH++EHgv6HqKmUE1u8/2UD+sNhKtJJy0Gyo=; b=C2Y4ijL4MIxiuz
	wlDy5k9ttQuEdfAKKxcLTZAuDWA5kH5ms0s4NugqkxpovtOq/iwFu9SV2Bk3p0FOi2OCl7/lTppLJ
	DM6QA8NdKaZEMa/aq04S/ceqIf0uC5/4IZdyD2xv1bJUuENvQTp7IPpQGTgoyDyEgtogSrEONaMJR
	vFR2kX6IOpQzd269tiu3IIZctDScFiztRyZ7NYgG0vbRyUXj1bn3HmlTRlaPJFTUFJ9HOBS5h9/fe
	IRLcwrnNfWTfgGR7rww0DHkwMHhnLV+rhJ9u8oW2PiJc+XCJ2XpKWevoYdS2H+2NM6T30qSB4Ar4k
	KHFhQ2Q7lKqD0JmAetOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SfY-0000000FL6z-2vtJ;
	Thu, 17 Oct 2024 15:44:08 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SXk-0000000FIuH-0YYG
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 15:36:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 1C454A44137;
	Thu, 17 Oct 2024 15:35:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A788C4CECD;
	Thu, 17 Oct 2024 15:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179362;
	bh=UaHTT/HCPSCBmEoLaaHxWZ8kYjvp79Mh62xxOcsCz3g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=MNF8iDpYfzr/MllJDBEf+0OjI4ejKzCH1MnIlFSj3P4DjmRkcLc722QW6DzmCk7tb
	 1S7ib2J0Xvb1jpNMs8ytpfN5Qi0/0k0pt4cipphk4NUuSUB4jpl+Y1EAWfHf7rWRSa
	 icZ9z1Sos4ktrwFWtVXMOXGqVnRCJT7cozsoxHWVqQjuFcQCqdVA1QI/844GH/yd+V
	 8f1YDsifxmjrF6l1etNSasGvuP36bIXEnpVed/mSWTUqgTIctM5YWgegG1aYN1k/zp
	 NKKkPLdfEjFrblCxAvJk0uBYR/PTRNXWlWhcg//OcuuGVzTLc7rR+XrqyJIu7cjE7z
	 wdHyVJ1tpTIVg==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, konradybcio@kernel.org, andersson@kernel.org, 
 simona@ffwll.ch, dmitry.baryshkov@linaro.org, abel.vesa@linaro.org, 
 robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
 marijn.suijten@somainline.org, airlied@gmail.com, 
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 quic_khsieh@quicinc.com, quic_parellan@quicinc.com, 
 quic_bjorande@quicinc.com, Simona Vetter <simona.vetter@ffwll.ch>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 quic_riteshk@quicinc.com, quic_vproddut@quicinc.com
In-Reply-To: <20241004103046.22209-1-quic_mukhopad@quicinc.com>
References: <20241004103046.22209-1-quic_mukhopad@quicinc.com>
Subject: Re: (subset) [PATCH v4 0/5] Add support for DisplayPort on SA8775P
 platform
Message-Id: <172917935474.288841.13832533870290794704.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:05:54 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083604_273875_DF1786DF 
X-CRM114-Status: UNSURE (   5.27  )
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


On Fri, 04 Oct 2024 16:00:41 +0530, Soutrik Mukhopadhyay wrote:
> This series adds support for the DisplayPort controller
> and eDP PHY v5 found on the Qualcomm SA8775P platform.
> 

Applied, thanks!

[1/5] dt-bindings: phy: Add eDP PHY compatible for sa8775p
      commit: 7adb3d221a4d6a4f5e0793c3bd35f1168934035c
[2/5] phy: qcom: edp: Introduce aux_cfg array for version specific aux settings
      commit: 913463587d528d766a8e12c7790995e273ec84fb
[3/5] phy: qcom: edp: Add support for eDP PHY on SA8775P
      commit: 3f12bf16213c30d8e645027efd94a19c13ee0253

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
