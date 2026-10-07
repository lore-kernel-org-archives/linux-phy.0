Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 557F7CA5FF1
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 07:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eXWJqvcw7yTmDhbna7KZWrXrCPqO/J1NIZpMnLZe7Xs=; b=tRP3xqr9PwBB/K
	XnABMzSGr5ui+yZ063LqSAr25hgFWAvXLpjc+Rru7zxtsgyZ2a7Vsl4xkh4J/7fZhE0GSalTBaIKE
	kl2CuA3vK+VVZC4y3eqQNUkC2NvBoJakoqtTbV3a42sLunmRzFC1k0t235/5m6CJSCtzrET/VOxQG
	0IW82ZpN2LwREDX/7nwphNIMspD3pnPCfmo3wBcnJXI5SbZUab6p2lB6jj4id9XEdapeia5J0lbZq
	7oWY5a46BfsQj8uaSg0R7wwv+D2MlUTSehH91ie9TmfG2w1QNw3zx+7jvHYeFbpwUi81qYEqQTER6
	AEoIPZeKABI++LrYCqvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEM9y-00000001qc3-3woC;
	Wed, 07 Oct 2026 07:33:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEM9v-00000001qbc-48ht
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 07:33:53 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69776YqS3213275
	for <linux-phy@lists.infradead.org>; Wed, 7 Oct 2026 07:33:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rIJHGqjJoOZNcEGSLMz1nXzXAIAcTzixe0BY7qUjfio=; b=V12pArqsr4RNULOK
	wyq4GTynyQhlmdWN1uVjneNDqP7Eisu5bYSCDIg5268U0hnzkttPMWb8JDX5up+R
	7uhWVXrLznkqu24uxxwt2E3vAVIz1VaZFuiNRJpOqKJFqwL8bOHEy5QYIrB40ddI
	V8Pn9190496/SxH7Lui7ScfY3Z1EXK3iuFeL3c7kM0VdX/UadMjdBrwLxS14CSLh
	LM7SDSBWr0872FpPXYsAdACSHmGuhhxth3554Cep8C1c4G5SVcSmSuC3nuflljux
	f6fx12C9D4ZHJMbRXNIihEQS8SR1RU2f7zKqzOiiGxKtkcIao0+5jEkhHwRvz1eX
	hlYNbQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5hdcr2jj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 07:33:50 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3a85a221b7bso2773330a91.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 00:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791358430; x=1791963230; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rIJHGqjJoOZNcEGSLMz1nXzXAIAcTzixe0BY7qUjfio=;
        b=f8hNSBAAAUvX4J0ZbKzL70J/DC88P9i/AgCx8i9toxS9QWMmF7pQ1gv+xH7jGsU5hq
         RgPcr6pK2IizL9j9qm5yUVcmQLL1XzHLGv6NG+XzU4CqrzP12l8pPhE+X8zI/PGOmvrC
         j/Mq/egVyTi+MQ8MKHJuUJnAkKzsL59aqw+EGHfS7KSIrs0y2mgOmYdSAZGz8jdkrZ7a
         IUdFqbUciodYmmru2pgK4mRSsM+ABbD7V7u5QKAS1cLUnAPWnykWvr6tZ/RDmFVt8DUM
         SEafJfV6mFscgk5/rYeaMNanXSErw9CfhhhlStonjTs1xSMh1tGyeJMo/RveOQ0X5GIh
         Ketg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791358430; x=1791963230;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rIJHGqjJoOZNcEGSLMz1nXzXAIAcTzixe0BY7qUjfio=;
        b=OpqKk/l/QJsKSJdGIb4B9FD4fnTehRnyqXqMpEfOLmrVfyBFuQ2IXp1H6lLEae2bie
         zKFSTx7n8ei+qIteelSVPlybvSiTG06QmNFPwrxoDz+uim4VV+Hx0Rrcu4Zarhk/Gaj6
         vdJmpZjEHHRN4e56vXpJ9t2mx3xFVI2cgXhqUVaxEfOs9Wz45HWH5PYILayZ32PcbqEK
         nqIxnKPnI3I9sBtqoAUZCCFUdy4b2PtOqvpEdcLK5lBWXVRrBuyNmXfFIA46Ogq37w2x
         r43mhSejSJ9vhqYqeyYYxMFlgK1c/2EyAvcsQY64u0mG2y1NSEirp8312Pa7tdrroIxa
         am0g==
X-Forwarded-Encrypted: i=1; AKwUvByAUSRBa0k4oHWRcoNhFDpzLuATdYodSCYm/3KwEOC5kSj2Gc/l+tNFOzDTSCGISJXFL5Y9ocNGVSA=@lists.infradead.org
X-Gm-Message-State: AFq9FYIfsTla0Uda6IaI4NIt8/QGVFe5SyYJ+PjiSjwPKOxpyXeUUB+6
	MswXsJK4WhUOOj589+gBtS+9Zwbd683/JIRh1cH4ZbE8N5UlsInOneHO+iujx7n6hIms9ITlfB7
	z4iTRO+9O6Hy825UnMN9RJxrIcsyK+j7+ewTg4aDSbZyF58IKxgfQZX1MgRnfhcBx2oqp
X-Gm-Gg: AYBFou0eBwAARJfFabPYRemwfNGtPVJR/byxxJGdu5X9SCobIA21BJ+Is+6BxUsMUQG
	ohpQvpFgbcKOGko1U6n5LyfjZbmE9UVhZWkejdTAFL24RhqnSPiRlBF3AU+EdBOIGLuHkbelXYp
	K1Ym5abzii6FYHLjzH1ZCLfybWiLlLnzCI2qN8mDSZkKgCEeqBbKFei6mSS8b+nYCJm6A7BtI1t
	J3ys+ISVtkmnFbK2m5x0OvUtj5pDsigrOHYKSkJV5jUvOZdraYITDTvBDwCZlLdMqvUjSepTq+r
	egYX+IDYm0U7Xf73kaOA/XLfqYgoxFIPn7NVD2VcSod03pdIvWTL7BnsZ9rflq+mkDVlo1xuion
	DtY9sRDqBe0wvUPO6s2i9A3Bnl0JY
X-Received: by 2002:a17:90a:e704:b0:3a8:d1c:8e67 with SMTP id 98e67ed59e1d1-3a8a0e097f0mr1239262a91.35.1791358429749;
        Wed, 07 Oct 2026 00:33:49 -0700 (PDT)
X-Received: by 2002:a17:90a:e704:b0:3a8:d1c:8e67 with SMTP id 98e67ed59e1d1-3a8a0e097f0mr1239245a91.35.1791358429295;
        Wed, 07 Oct 2026 00:33:49 -0700 (PDT)
Received: from [10.204.78.119] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a851630206sm8776843a91.0.2026.10.07.00.33.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Oct 2026 00:33:45 -0700 (PDT)
Message-ID: <896dc089-b3be-4bad-872a-906deaa97071@oss.qualcomm.com>
Date: Wed, 7 Oct 2026 13:03:35 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/17] phy: qcom: edp: Add Nord PLL configuration callback
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar
 <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-14-e25c073cf1b6@oss.qualcomm.com>
 <nv5ij423d4rbwpnhexj6yv2qgasrb7k3wzoo7o6vx5kg3vc3n7@6u4rln5ltbsv>
Content-Language: en-GB
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
In-Reply-To: <nv5ij423d4rbwpnhexj6yv2qgasrb7k3wzoo7o6vx5kg3vc3n7@6u4rln5ltbsv>
X-Proofpoint-GUID: kTCLrJHQJKxRfvQXf2INOkbXV19dewol
X-Authority-Analysis: v=2.4 cv=aKFlOr9m c=1 sm=1 tr=0 ts=6ac5f5de cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=UbSN2h5EAu2IQE0OKKEA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA3MDAyOCBTYWx0ZWRfXzyX6XHPWKod5
 kugJInaQxB9x50zWfMZILpSsSPTrTACsB3i2OvPSbsUVqDpI49aoSyzj24SttDuGBFT1Re013HF
 umGm5gWmtu5fW6B1L/Z1hbF9U7pfw5Y=
X-Proofpoint-ORIG-GUID: kTCLrJHQJKxRfvQXf2INOkbXV19dewol
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA3MDAyOCBTYWx0ZWRfX0ou+F6KT2vb2
 OU/RLNYxyAhFktz6gyAvSQKaBWWV3RAbd7pcTY1FP7S8OAlx6xzTEfNM6rK5L8ZMZK853h3FDsg
 TiSIlxXUSzpLG8WSOTtua+H2gwUhhNzx/A2pN6ab/tkW8THO8O9Mv7/Du6jRRKGUFjJqAIAf/V7
 nnk2Iqoib6qogZo7uLGe+q/6pXc1cErQr2X4OCzGvMZw6LUHxKwgnp1bWAtQQbgkC2cpucj13Ec
 DHYIhFj/Wq3cne+FWejmzg9wrLphKifmZBnGgdtlCcOC56VM2cYLAFm82bU3/zaNNg6yc+YwxP0
 WocwmeaMW9jq9xQhF5lQUyaVlD4As0PRCVXkrgKYZb3VzAwP7YMRMjkqdXO73bWmNTTiKBe6WkJ
 0NcCM9jvZPfry1uBX4LgQU/dSLoXmMBCg2XEYK76DqrSpPEtDxNx5u+FGVIRwsao9Mp1i64qYAD
 FVRhCgkiyXnw8aYzP3Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-07_02,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 adultscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610070028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_003352_149194_560C0D9F 
X-CRM114-Status: GOOD (  17.76  )
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


On 9/14/2026 5:42 AM, Dmitry Baryshkov wrote:
> On Fri, Sep 11, 2026 at 09:06:45PM +0530, Nabige Aala wrote:
>> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
>>
>> Nord uses a 38.4 MHz CXO reference with a different QSERDES v8 COM
>> register layout and PLL coefficients.  Add
>> qcom_edp_com_configure_pll_nord() which programs all QSERDES COM PLL
>> registers with link-rate-dependent values for RBR, HBR, HBR2 and
>> HBR3, per HPG Table 2-1-d.
>>
>> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
>> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-edp.c | 112 ++++++++++++++++++++++++++++++++++++
>>   1 file changed, 112 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
>> index a0f4b12e561e..4d1b2c81d956 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
>> @@ -1688,6 +1688,118 @@ static int qcom_edp_com_configure_ssc_nord(const struct qcom_edp *edp)
>>   }
>>   
>>   
>> +/*
>> + * Nord PLL configuration per HPG Table 2-1-d, CXO = 38.4 MHz.
>> + * Supported link rates: 1.62 Gbps (RBR), 2.7 Gbps (HBR),
>> + * 5.4 Gbps (HBR2), 8.1 Gbps (HBR3).
>> + */
>> +static int qcom_edp_com_configure_pll_nord(const struct qcom_edp *edp)
>> +{
>> +	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
>> +	u32 div_frac_start1_mode0;
>> +	u32 div_frac_start2_mode0;
>> +	u32 div_frac_start3_mode0;
>> +	u32 dec_start_mode0;
>> +	u32 lock_cmp1_mode0;
>> +	u32 lock_cmp2_mode0;
>> +	u32 lock_cmp_en;
>> +	u32 hsclk_sel;
>> +	u32 code1_mode0;
>> +	u32 code2_mode0;
>> +	u32 core_clk_div_mode0 = 0x14;
>> +
>> +	switch (dp_opts->link_rate) {
>> +	case 1620:
>> +		hsclk_sel		= 0x0c;
>> +		dec_start_mode0		= 0x54;
>> +		div_frac_start1_mode0	= 0x00;
>> +		div_frac_start2_mode0	= 0x00;
>> +		div_frac_start3_mode0	= 0x06;
>> +		lock_cmp1_mode0		= 0x37;
>> +		lock_cmp2_mode0		= 0x04;
>> +		lock_cmp_en		= 0x04;
>> +		code1_mode0		= 0x8d;
>> +		code2_mode0		= 0x27;
> No extra alignment, please.
Ack
>
>> +		break;
>> +
>> +	case 2700:
>> +		hsclk_sel		= 0x04;
>> +		dec_start_mode0		= 0x46;
>> +		div_frac_start1_mode0	= 0x00;
>> +		div_frac_start2_mode0	= 0x00;
>> +		div_frac_start3_mode0	= 0x05;
>> +		lock_cmp1_mode0		= 0x07;
>> +		lock_cmp2_mode0		= 0x07;
>> +		lock_cmp_en		= 0x08;
>> +		code1_mode0		= 0xf6;
>> +		code2_mode0		= 0x20;
>> +		break;
>> +
>> +	case 5400:
>> +		hsclk_sel		= 0x01;
>> +		dec_start_mode0		= 0x46;
>> +		div_frac_start1_mode0	= 0x00;
>> +		div_frac_start2_mode0	= 0x00;
>> +		div_frac_start3_mode0	= 0x05;
>> +		lock_cmp1_mode0		= 0x0f;
>> +		lock_cmp2_mode0		= 0x0e;
>> +		lock_cmp_en		= 0x08;
>> +		code1_mode0		= 0xf6;
>> +		code2_mode0		= 0x20;
>> +		break;
>> +
>> +	case 8100:
>> +		hsclk_sel		= 0x03;
>> +		dec_start_mode0		= 0x4f;
>> +		div_frac_start1_mode0	= 0x00;
>> +		div_frac_start2_mode0	= 0xa0;
>> +		div_frac_start3_mode0	= 0x01;
>> +		lock_cmp1_mode0		= 0x17;
>> +		lock_cmp2_mode0		= 0x15;
>> +		lock_cmp_en		= 0x08;
>> +		code1_mode0		= 0x14;
>> +		code2_mode0		= 0x25;
>> +		core_clk_div_mode0	= 0x0a;
>> +		break;
>> +
>> +	default:
>> +		return -EINVAL;
>> +	}
>> +
>> +	writel(0x01, edp->pll + DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL_NORD);
>> +	writel(0x0b, edp->pll + DP_QSERDES_V8_COM_SYSCLK_EN_SEL);
>> +	writel(0x02, edp->pll + DP_QSERDES_V8_COM_SYS_CLK_CTRL);
>> +	writel(0x0c, edp->pll + DP_QSERDES_V8_COM_CLK_ENABLE1);
>> +	writel(0x06, edp->pll + DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE);
>> +	writel(0x30, edp->pll + DP_QSERDES_V8_COM_CLK_SELECT);
>> +	writel(hsclk_sel, edp->pll + DP_QSERDES_V8_COM_HSCLK_SEL_1);
>> +	writel(0x07, edp->pll + DP_QSERDES_V8_COM_PLL_IVCO);
>> +	writel(lock_cmp_en, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP_EN);
>> +	writel(0x36, edp->pll + DP_QSERDES_V8_COM_PLL_CCTRL_MODE0);
>> +	writel(0x16, edp->pll + DP_QSERDES_V8_COM_PLL_RCTRL_MODE0);
>> +	writel(0x06, edp->pll + DP_QSERDES_V8_COM_CP_CTRL_MODE0);
>> +	writel(dec_start_mode0, edp->pll + DP_QSERDES_V8_COM_DEC_START_MODE0);
>> +	writel(div_frac_start1_mode0, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0);
> Always 0x00
Ack, This value is always 0x00 will update this in next revision.
>
>> +	writel(div_frac_start2_mode0, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0);
>> +	writel(div_frac_start3_mode0, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0);
>> +	writel(0x12, edp->pll + DP_QSERDES_V8_COM_CMN_CONFIG_1);
>> +	writel(0x3f, edp->pll + DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0);
>> +	writel(0x00, edp->pll + DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0);
>> +	writel(0x00, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE_MAP);
>> +	writel(lock_cmp1_mode0, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP1_MODE0);
>> +	writel(lock_cmp2_mode0, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP2_MODE0);
>> +	writel(0x0a, edp->pll + DP_QSERDES_V8_COM_BG_TIMER);
>> +	writel(core_clk_div_mode0, edp->pll + DP_QSERDES_V8_COM_CORECLK_DIV_MODE0);
>> +	writel(0x00, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE_CTRL);
>> +	writel(0x1d, edp->pll + DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN);
> Not 0x1f?
Ack, This should be 0x1f. I will update in next revision.
>
>> +	writel(0x0f, edp->pll + DP_QSERDES_V8_COM_CORE_CLK_EN);
> No DP_QSERDES_V8_COM_VCO_TUNE1_MODE0 /
> DP_QSERDES_V8_COM_VCO_TUNE2_MODE0?

As per HPG, We dont need to programmed these for Nord.

Thanks,

Nabige

>> +	writel(code1_mode0, edp->pll + DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0);
>> +	writel(code2_mode0, edp->pll + DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0);
>> +
>> +	return 0;
>> +}
>> +
>> +
>>   static const struct of_device_id qcom_edp_phy_match_table[] = {
>>   	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
>>   	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },
>>
>> -- 
>> 2.34.1
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
