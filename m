Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD4F1C369A9
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 12:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TYbqi/Ne/n44/yjzBGjrLHL+TN0C/UAFZRvT2zohmbw=; b=ifApeMR6/Occc6
	ukDorch8QDHaK4oFzByQPzqV/OHhbv2Srhr8Fej9rd3hIwU+84xV4h2/s8VCdodjIypNy/UzG/oi6
	c4xlnZMMH7MHUnrYpLmb9SykUQdwwLZ4KbVU/R9FaYP/8Rip7ahT7e1x26FFMKXpSveiK3UPg27FX
	1LXAFzVbgjqLRfq3AQ1X7Te0apQz7g+hJKE6udyesMFROMjUbbxkTfxCjjG3NG9Wtget5wZuVfZdM
	7apuM+bLuIrTK5XYJ/JkC1S4rpVxqqk2Ln7CK98mFNAr8FIv9A0FWOBfTQx+NN98mXQBwmNmcdbvV
	cRJBkaAtovgUAghcQcQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DKW-0000000Di3V-2lil;
	Fri, 11 Apr 2025 12:17:56 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DDm-0000000DgcC-0BdE
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 12:10:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CA1EFA4AADE;
	Fri, 11 Apr 2025 12:05:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA33CC4CEE2;
	Fri, 11 Apr 2025 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744373457;
	bh=nCd+LxvQeLmdA43kSoXh5ev8ecysDHuHXJVPakAAHjI=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=ar+4GRpTeAqYMKcU/c5Dqk3FMPwvg0NZCgPBERlfN7tXkgNh2H8pp8Zl6PLjVLRqh
	 eNDhazxCNgGmHFXXIrSt8m1DstxnxjbSzELyU+Jsi6WwVDEnDbyAgyHoEzgibljQQX
	 fIiZWr8PDMhmBOuUCv53yyGz9zqo+Y3UyeRJaGUowhRpHWBM6ztvSXIBpVYwlbnUrT
	 X97dEjSmDN9g8h9xCHrY1XL/1TauT/WLwdkNxL0JYOaztlCxtiigSC9zd06+2bfJH4
	 9mM/Zpn4qX7LNL5IgFbUWuj5rr/pnXeX9bJNoe6hc0vHMiz5XezNhBXhyX27RNXttd
	 tVADpNGmtDOlA==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, p.zabel@pengutronix.de, abel.vesa@linaro.org, 
 quic_qianyu@quicinc.com, neil.armstrong@linaro.org, 
 manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com, 
 konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <lumag@kernel.org>, Wenbin Yao <quic_wenbyao@quicinc.com>
In-Reply-To: <20250319094544.3980357-1-quic_wenbyao@quicinc.com>
References: <20250319094544.3980357-1-quic_wenbyao@quicinc.com>
Subject: Re: [PATCH v6 0/2] phy: qcom: qmp-pcie: Add PCIe PHY no_csr reset
 support
Message-Id: <174437345339.673939.1810630369307364941.b4-ty@kernel.org>
Date: Fri, 11 Apr 2025 17:40:53 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_051058_149490_C3906929 
X-CRM114-Status: UNSURE (   6.34  )
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


On Wed, 19 Mar 2025 17:45:42 +0800, Wenbin Yao wrote:
> The series aims to skip phy register programming and drive PCIe PHY with
> register setting programmed in bootloader by simply toggling no_csr reset,
> which once togglled, PHY hardware will be reset while PHY registers are
> retained.
> 
> First, determine whether PHY setting can be skipped by checking
> QPHY_START_CTRL register and the existence of nocsr reset. If it is
> programmed and no_csr reset is supported, do no_csr reset and skip BCR
> reset which will reset entire PHY.
> 
> [...]

Applied, thanks!

[1/2] phy: qcom: pcie: Determine has_nocsr_reset dynamically
      commit: ea57d7fe4f5af517b5ce91fdff96cc33be932690
[2/2] phy: qcom: qmp-pcie: Add PHY register retention support
      commit: 0cc22f5a861c3149171485349dafac3047212a5d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
