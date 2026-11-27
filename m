Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058E3606A31E
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 10:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dXFLFjWx;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=cbRRqBzB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ddl4WjLiqghfycBh1inJQC4HMpcoeQ5mSYc6/RbrL5w=; b=dXFLFjWxkE7lhylfW2VrdZhzWZ
	v9aMFDYrzXcrPzUyiDUzt01XgbWhcWa2CeWiOegH5SQuFFD36Z3arvymS1El5J0vAhMmxOErTUZ3Q
	FMBkWo6vwDxpIf05F4EkwhHg8JRAM8qt5Aa5TqXELvzePYQNw4SYEoFJs0DkKdxrNMvTN2mR3mkJP
	CRE+GKz+PlANjpGt156lZggF/XDkP/7Z0JCYO2tkb5eCt81ZvmhKungDkqLUVWOlS2RwoRmdGAZAB
	a+ZJ1rVymTMW1AwcUztSkFTZaHEoQAk+5SNP/Vgin/ujGVrpkzUwyZY+4cUiUl8z3J3Ra/gv2RPkp
	YiPWJ6cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtZ8-0000000Fh2Q-1k9O;
	Fri, 27 Nov 2026 10:52:30 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtYz-0000000FgmE-3A78
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 10:52:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DB82260A57;
	Fri, 27 Nov 2026 10:52:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED36A1F00897;
	Fri, 27 Nov 2026 10:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795776740;
	bh=5uqGsLlrlwUDzRKxFJbZUkdA9wKU+IqOkrf3/Zut9EY=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=cbRRqBzBY5ufG6mtrQYHRRNNGyFkmjOfwaui0shhprwKOCrBTEJMDSZgq3pGuO8Il
	 RV4G9Cml5mGnSUvqaRuuBgDlYY5Pp79f2wM/s6uv7xgS00VPmEqbjvbBXEamq9/fJ+
	 +9O9tnLEfs5coGG9vLMhmVo8kAuGLF3SfU3IPnR/vjBDlZnNzt8zd+16owp38JeQd6
	 chGihxVlOLEAISMX508vZ6zi9TuDK3leIj9uewG0LS8EtRUUHi03LYgtmpTQI/rRPb
	 jB7uN9JHNohBiJbTPlbv5372l0IvxwwuJm7bW5mXsbidK7jVNdZSEUcGmiCNWcie6/
	 1fpdmUDY4mDGA==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: qcom: m31-eusb2: Add register XCFGI_199_192 for
 HS disconnect mask
From: Manivannan Sadhasivam <mani@kernel.org>
To: Tapas Rana <tapas.rana@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Wesley Cheng <wesley.cheng@oss.qualcomm.com>, 
 Elson Serrao <elson.serrao@oss.qualcomm.com>, 
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, 
 Prashanth K <prashanth.k@oss.qualcomm.com>, linux-phy@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20261118143406.2351999-1-tapas.rana@oss.qualcomm.com>
References: <20261118143406.2351999-1-tapas.rana@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 16:22:12 +0530
Message-Id: <179577673235.3421.1721263701456802634.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1704; i=mani@kernel.org;
 h=from:subject:message-id; bh=KBT8BudfEJpceNaiUFJ6IcLShzuFCfyqnnOBPcmdHQk=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCWDf/I9KM05kK5oiq4cSz5d4si1hUg5I5bB4E
 ZZwI1gDu5OJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawlg3wAKCRBVnxHm/pHO
 9bhLCACkeGRAUyRrycT7RAm/y2qtjPL+VLWKRDre18OW4TbeI9KGssHvugv+mH1AYIq7EXBc71k
 OAUMzQ4Su4NTC0s57irUtAExvWbAhT4mIKhDMxClq1cp0uM6o+Ejz4EFnuRk4zs59SXev+iGZVr
 R4Le9xafI76ibskqwcJ9V3fWM7TOA2D2ABBmrhIYaUZsLoic7E8Rvw5w8iy87DR4waLRgZZPp66
 fgRq7OfxzVWSomroBqhM5HzwVLofAeKmPqj8v8S9sV1YaZcJ+2SRMhUAW6UM6l/02NaBOyi6Cp8
 5vn/NKCwn3QbBEFwTW99+H3/6VdZDW2h7TIUb1zlOuKCrZxs
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-18 20:04 +0530, Tapas Rana wrote:
> In USB 2.0 High-Speed, a device disconnect is detected by the host PHY's
> analog HS disconnect envelope detector: it watches the differential line
> amplitude and flags a disconnect when the amplitude exceeds a threshold
> during the bus idle/EOP window (a disconnected cable reflects the host's
> own drive back, roughly doubling the observed amplitude).
> 
> While the host itself is transmitting, the line is already driven hard,
> and trace reflections / signal-integrity overshoot can momentarily push
> the measured amplitude above that threshold even though the device is
> still attached. With the detector honoured during TX, the M31 PHY latches
> a spurious HS disconnect mid-transfer, showing up as false
> disconnect/reconnect events, re-enumeration and transfer stalls under
> host-TX-heavy load (e.g. bulk OUT to mass storage). The failure is
> signal-integrity dependent, so it is intermittent and board/cable
> specific.
> 
> Program the XCFGI_199_192 register to set XCFG_HS_DISCONNECT_EN_TX
> (bit 196), which makes the PHY ignore the host disconnect status while in
> TX mode; disconnect detection continues to work normally when the host is
> not transmitting, which is when a real disconnect must be observed. This
> register was not programmed previously, leaving the envelope detector
> active during TX. Add this bit to the reset sequence to suppress the
> spurious TX-time disconnects.
> 
> Fixes: 9c8504861cc4 ("phy: qcom: Add M31 based eUSB2 PHY driver")
> Signed-off-by: Tapas Rana <tapas.rana@oss.qualcomm.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
