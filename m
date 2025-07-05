Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD927C8303C
	for <linux-phy@archiver.kernel.org>; Sat,  5 Jul 2025 13:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nnRrWGOneUtLpZwx9DRLg5oxD2vANeyhwtI+qf8xgnE=; b=a5DIAMdZLnQPMW
	vtYJNcyjywpcaXxWZBusMVCuAH9ztjHvkaWq0kjPH1wNPjDMJ8ir54d1hkoTOXOWTc4zJUNtaY2SP
	rXBCKUNaTIY0u2QKa+ID3U3QjWYuJlJRPRy4YefhmOfHg9EfWjWM24c054+IVjTtU084nrzcud24f
	fu8fzrxprAoU2388q8x+h5rRW0kwmkF5hsvryP7k53eqkgm7t8V4sYp2wuD1vXZpGVdHGVzmWr+h1
	KtQM53vHwNDBoPiNre8bCs9fcsY+wJgqxCXSLteRk+sq4dIIhWYypCuCTlhtT6x8B+XPmm8g5Ntmt
	EkheaZ0q02nEMFqwtGHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uY2wU-0000000GYb1-24C4;
	Sat, 05 Jul 2025 13:28:34 +0000
Received: from smtpbg151.qq.com ([18.169.211.239])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uY2vW-0000000GYUc-1aHC
	for linux-phy@lists.infradead.org;
	Sat, 05 Jul 2025 13:27:37 +0000
X-QQ-mid: esmtpsz20t1751722000t36e13c50
X-QQ-Originating-IP: a8lAHqUIIqqRPRk15q8cBF5M1P2suxRgobABGel99Lo=
Received: from [127.0.0.1] ( [119.98.96.24])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 05 Jul 2025 21:26:38 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2169472833565071941
Message-ID: <9588D2722C1F010D+51f41c36-856d-4dda-9f30-226c2f772f2c@radxa.com>
Date: Sat, 5 Jul 2025 21:26:39 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom-qmp-ufs: Fix HS-G4 PHY init table for sc7280
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Nitin Rawat <quic_nitirawa@quicinc.com>,
 Manish Pandey <quic_mapa@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250613-sc7280-ufsphy-g4-fix-v1-1-1bf60744f5ac@radxa.com>
 <o2chuy22dls3y3bsjke34z7pnyzap6m4m34tjxswueshulii4d@d5lbcragrbjb>
From: Xilin Wu <sophon@radxa.com>
Content-Language: en-US
In-Reply-To: <o2chuy22dls3y3bsjke34z7pnyzap6m4m34tjxswueshulii4d@d5lbcragrbjb>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MfQnJH+7WKv6Z2IQjAHqShMWQK7KOahyd3oZugBFH5OBkN9TKvh6ID6X
	1QXt/Nm2M4+ZkbJtzq8HYQzqq0b3Pr1TpI77qyU7thwiSnlucGPmoaCj2BvslImkK0rdvQ3
	GcreWtKD7iEYcSDJtTFIPhyVnliop/+9LjXOcyolhYJ6CXjXV5AlsedaRsOO2J4W119dI+h
	swXAcubXgn1C4Cq+oZiR8HluhTijqLkVLhXQkUk+vXkez3oGF7b8RI2M6BXvsy7bXSHgwtN
	EumnTER9HqdPPY+Wvq6RAEiA1CpV6eL12s4M1oM7oZBIDwf1R2BZQZr4qRfBrZljaBgvmDD
	tGiZSzAy+xuFD3lY6jBVndJrEkhKwmxIPuTd54TkeaUiJ4vQiAywBJptx5pxgvSslb5yD6D
	qmgm/gmr0/n8MJiiDFa74V+1nnLvrSAu2DOVcC+jwaaj/H1rWraYsSgU3BIZIi95J90o6qz
	OJ4l6CjkcvmMP/duFnmduP9IeSADiWAy+HDuIjn4r1uC0k30/BUxjibaAmR7IIKp1abeBYB
	m2MaTSh9P9KJtl1t3vnOerlpH9DF5AULqscejz/CP40h8ufwORSJ6EYbbkV95aek1/gJXrm
	jOJIYpN406twBRNu/gsYrZsD0QfN1wYIahNKoMXF1Y7qEHLAGCjUL3dNJkb/FDytEZEdAJy
	sYbwL3E5xuyoDJSPWNtk4woOcGCCCrsKiSnYvKCw+7kerGTGgM/LrBXJ9K5TgXy1OQswN/A
	A9FvvvZ/KnuE15NHJYzIDgVIQNanlCcYSwBp9BPoExtPv/Ab7Y4COJ/wX1q9Ew3AIYXr70+
	k+akOB44lv2U9TJbmF63fhwEPYecVc/em/c2BGiUWhMiBm9hObqynoJ1reykNslJtXTLeIU
	0ewB8OzY1IpFPjYK5fkfTw68giL53XEGI+kJAbicEAoXaYa7wzCbAfqRKyW9kcL0IfwWJkR
	7JW98p54kCE3xWFsTOM7x0V8Z1yYPgy+f/Lh8QdNvM2dI+1RTntT1mOB9xRVFqQBfACgXpd
	44cYs5/A==
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250705_062734_951953_897693DE 
X-CRM114-Status: GOOD (  13.81  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 2025/7/5 21:06:56, Dmitry Baryshkov wrote:
> On Fri, Jun 13, 2025 at 10:41:48PM +0800, Xilin Wu wrote:
>> The PHY is limited to operating in HS-G3 mode during the initial PCS
>> registers initialization. Extra PHY init sequence is required to allow
>> HS-G4 mode to work when needed.
> 
> I can't find corresponding settings in either of HPGs.
> 

I believe there was a mistake when initially adding support for sc7280 
UFS PHY based on downstream code. In downstream [1] the 
HSGEAR_CAPABILITY registers are programmed to 0x3 **only** when Gear 4 
is not needed, while the current upstream driver always writes to this 
register regardless of the UFS Gear. [2]

I don't have access to the HPGs. The Gear4 specific init sequence is 
found in the Qualcomm proprietary UEFI driver code.

[1]:https://github.com/NothingOSS/android_kernel_msm-5.4_nothing_sm7325/blob/sm7325/s/drivers/phy/qualcomm/phy-qcom-ufs-qmp-v4-yupik.h#L355

[2]: 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c#n215

>>
>> Fixes: 8abe9792d1ff ("phy: qcom-qmp-ufs: Add Phy Configuration support for SC7280")
>> Signed-off-by: Xilin Wu <sophon@radxa.com>
>> ---
>> This might need testing on sm8150, sm8250 and sc8180x as well.
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> index b33e2e2b5014d3ca8f19b623ba080887f53e616d..7797be329d75f95c80863e05351d0cf55fdf38c2 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> @@ -570,6 +570,13 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_pcs[] = {
>>   
>>   static const struct qmp_phy_init_tbl sm8150_ufsphy_hs_g4_pcs[] = {
>>   	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x10),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_PLL_CNTL, 0x0b),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TIMER_20US_CORECLK_STEPS_MSB, 0x2d),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TIMER_20US_CORECLK_STEPS_LSB, 0xb0),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_PWM_GEAR_BAND, 0xff),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_HS_GEAR_BAND, 0x1b),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x04),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x04),
>>   	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_BIST_FIXED_PAT_CTRL, 0x0a),
>>   };
>>   
>>
>> ---
>> base-commit: bc6e0ba6c9bafa6241b05524b9829808056ac4ad
>> change-id: 20250613-sc7280-ufsphy-g4-fix-024542f31fac
>>
>> Best regards,
>> -- 
>> Xilin Wu <sophon@radxa.com>
>>
> 


-- 
Best regards,
Xilin Wu <sophon@radxa.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
