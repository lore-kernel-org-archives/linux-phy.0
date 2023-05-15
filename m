Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E541C7EE22
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 03:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PyE83KksmHMAxsdEJMeT5DD0tF/dI8T3dU3udR1LJrQ=; b=L+4nME+CpWzJ9d
	SxM4ElxkoNkQwr5bVo3JVjnu+kfah6AqEmC0aYlmyGuSVVjaXqMFPBMHtszUJbXUcS+yCU6wZ+8o7
	3Bh24Pwl9j4yeuXVG9owHnThIZIy56PqbE/Vx6UNkbzaOZSpRcDuGbtFa8ZR3WdeBoAcHSuyTkQCA
	psx1Q/DncRhA+wS0Z2srFwZPGJ86FOqJ3w4uVfMUU65uNecJOcF2f3gmA+n/gdYHTOg0i6O7JfUDo
	apZLcOa11jaN5JjB2H5fw72Vy3my0KOYkrIMygzG0VW8mzulI8NzBh9h0691BXbX7nUxeC+8Me87/
	aPh0evtG0nreh+kY77OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyOu2-000k6c-0H;
	Mon, 15 May 2023 03:29:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyOtx-000k4n-15
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 03:29:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E1C4161E50;
	Mon, 15 May 2023 03:29:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19D2DC433A4;
	Mon, 15 May 2023 03:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684121372;
	bh=Erx/dvvIqfZcA/48vAEKUnPeosVouLSRGWcGC6DqMik=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lF/nM9JIBEMDK8Yj8tKATcz0E3XmSgNRfrXyj5vH5Bt3CdzCcVx4Zxg/QRVv84D9x
	 XR9gPbaHTPhUBhLJhW9uDSRCqE58KZzfucZrF+2LXgflrcLYrel4vRqk20SxlvZfVA
	 iyoUFfGWlj0F4CGoG5Qy/FPXCNtsNR8ki6JIomzXdsr4oPueVd1IxRddACVyU7HBtG
	 3L4ArAcf2bMyTZmPfAq/Yjd9q2Xj4O6UlUlAYO9nMMFZRLM/zQumpjwCwl+WK5vfAo
	 boLi4AKct4d72Ja+mC3X2AO3e3fur/al9tDtOs6KbwbOw05fw72nxLefhRbVYarYQP
	 poiB6UnuKrvmg==
From: Bjorn Andersson <andersson@kernel.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	agross@kernel.org,
	Shazad Hussain <quic_shazhuss@quicinc.com>
Cc: linux-usb@vger.kernel.org,
	athierry@redhat.com,
	linux-kernel@vger.kernel.org,
	konrad.dybcio@linaro.org,
	robh@kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vinod Koul <vkoul@kernel.org>,
	dmitry.baryshkov@linaro.org
Subject: Re: (subset) [PATCH v2 0/6] arm64: qcom: sa8775p: add support for USB
Date: Sun, 14 May 2023 20:33:10 -0700
Message-Id: <168412158456.1260758.3501683399991411428.b4-ty@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230428130824.23803-1-quic_shazhuss@quicinc.com>
References: <20230428130824.23803-1-quic_shazhuss@quicinc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230514_202933_412842_2BBE218C 
X-CRM114-Status: UNSURE (   9.20  )
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

On Fri, 28 Apr 2023 18:38:18 +0530, Shazad Hussain wrote:
> Update relavent DT bindings for USB, add new config to the phy driver,
> add USB and PHY nodes to the .dtsi and enable them in the board .dts
> for the sa8775p-ride platform.
> 
> v1 -> v2:
> - correct dwc3 device tree bindings for irq's.
> - collect R-b, A-b and T-b tags.
> 
> [...]

Applied, thanks!

[5/6] arm64: dts: qcom: sa8775p: add USB nodes
      commit: de1001525c1aa21380349ffbef8154149ef637e8
[6/6] arm64: dts: qcom: sa8775p-ride: enable USB nodes
      commit: 4eefaf51f716be584bbc4f548d368255c682a3b9

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
