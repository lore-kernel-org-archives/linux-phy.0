Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39AC4C3DA78
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 06:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nraCnLai+JHixCU/THrYJ9FLtIvo1yO2ri03jegZovk=; b=KRxIZO6jbC8uzn
	iXFKCnbYzCEFsStnHeSkXpvpTjbXM0W99z1x2YFkttYuuoU2j4CLiWcfrBN1rLsgBfmJb4o4Dvnzt
	VnO5Zvdq7BYMtU+ebZ0q5CEt7kXO1GaLyXKsM4WkLUdDwEb2h2HvrQMDZoDvRVdFW8pJm/qKbG5ph
	rMBQhqLkxEHkReBmRbERz5u+kCR1ceM5HSRreLjp/R0x9LTA0ncBdzTiG19CNufOd6NR0LGRkh8q0
	hYdulPC2BtywUQ55pk8NZ6G7oBIKGjFhRIp8TLb1iOD3SXsrPXyIuktibs6Frt7SXZtS5wYi+4IV7
	zhiw/hBMjAzly3F/EGKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHfPI-00D3ZO-I8; Tue, 17 Jan 2023 06:25:16 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHfPF-00D3Yr-1B
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 06:25:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CE31EB80DF6;
	Tue, 17 Jan 2023 06:25:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5C87C433EF;
	Tue, 17 Jan 2023 06:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673936709;
	bh=Thp28YsZz2lq8b1khFzysyZJYiSV8xClCrJdvqiye54=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H9WUqhJOGNXpYZAqHJ9B139BMMOKckyQFLpL9y3ILJDvUebayuD4ETHRkK/Ntz4ue
	 S1h9m3bUjsuN4UtKRYzppaRjH7HHEgga0vKD0IDbj5Ed/l/O+s8xkAuj2urzCgOyMa
	 ugTQwF4sHluRifcyjpR6j0rZf2AVEEXcekNtNYs0zz+3+XxrudurM8VczeO5/pBNlI
	 RjbO/h/7d818rBjGW+GZE43iWPmnO35f+9Mdv7xhWbSWrW55XqM+vPdC9/U9R5g1Bp
	 8jCq/wbMx9+GHDslAUibM2CwoFjyfse3d0pRvC4vlSfNZCUPwRjCHLpP9R7niyGqFI
	 QHcvtujvuAPMw==
Date: Tue, 17 Jan 2023 11:55:05 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: andersson@kernel.org, quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com, abel.vesa@linaro.org
Subject: Re: [PATCH v6 00/12] ufs: qcom: Add HS-G4 support
Message-ID: <Y8Y/QX1KzWy2m3v5@matsya>
References: <20230114071009.88102-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230114071009.88102-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_222513_417524_F184CFCF 
X-CRM114-Status: GOOD (  16.17  )
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

On 14-01-23, 12:39, Manivannan Sadhasivam wrote:
> Hello,
> 
> This series adds HS-G4 support to the Qcom UFS driver and PHY driver.
> The newer Qcom platforms support configuring the UFS controller and PHY
> in dual gears (i.e., controller/PHY can be configured to run in two gear
> speeds). This is accomplished by adding two different PHY init sequences
> to the PHY driver and the UFS driver requesting the one that's required
> based on the platform configuration.
> 
> Initially the ufs-qcom driver will use the default gear G2 for enumerating
> the UFS device. Afer enumeration, the max gear supported by both the
> controller and device would be found out and that will be used thereafter.
> But for using the max gear after enumeration, the ufs-qcom driver requires
> the UFS device to be reinitialized. For this purpose, a separate quirk has
> been introduced in the UFS core along with a callback and those will be used
> by the ufs-qcom driver.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
