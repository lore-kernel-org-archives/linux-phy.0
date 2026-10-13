Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06627CC6B03
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 10:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Nr7K0UxbxNoihn/jR22R8eOZKEuodboWFZLncI1BDo=; b=nnFo1Ai5ZWLv1x
	D2xS6/rg9IP34vbxeDWUdiN8KfhBHWavuPA1jKwvO3291eD1T8AA3OiCB26wSB80Jl/3WIk8PHcdX
	WU2q9TyOsGQsP1Q0BCUDnu/BJMofgQ4B40E1VUfYwHif3oy3XsVRMhZcHQLgki+nLL4X8R0F0s4fK
	UWiLi+dfIogZsX8EOcaWlSaMMfi8KFIfF6OKcmAtC9FIK35u/0p1u/ZiPKUGnCrbgRns+5FnNybPo
	i2gsrtFAuHbctS5RtzsfZ8fjUiG5T4SUCaXCqUr3wac7HsJfb5vnWliteAbzrNqCPVa7C2d/ucy5R
	2dx/majVWgRluYiQ6aYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGZjS-0000000CYwG-17lr;
	Tue, 13 Oct 2026 10:27:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGZjP-0000000CYvU-1bJJ
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 10:27:40 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D9WSCW173800
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 10:27:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=QGAQ+SPDmvHqJzwZscytDbFj
	nJRM1Cy8AUNB2ckczKY=; b=GDoecBCKYq1UclhMIzU6gAUGU4jyMdg/pjj7HFCh
	OSBVOjrQb/rnKJefWlP2oCTz5X84+x9Q6kLuzN/zBFUJwPFcm6MuYB7kHM0GrNrE
	1OBV4u+hpOsd45NiSUbyJv5UI8nocTMzwD6+5oNVw3FZbRWE+/J8OgwV0FOY1jqw
	DVEGmXldwF483UBV7CR6pX3Sv/qNnNOKuNLOKvbzPG5GoXntVR+9mfzaMhkG4NGZ
	g6SNw3HglhZj1u737cu+EbIsUj67YBzexyOPv30e2WECOTAa6KsLuLxcbXMKSLTZ
	OsVrTeHs+rllxvCsom40XvAwN+JGyK3hh8GQJt9Z4mZRuw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h9daqsg9t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 10:27:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93caa0ce0cdso307925285a.2
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 03:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791887258; x=1792492058; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=QGAQ+SPDmvHqJzwZscytDbFjnJRM1Cy8AUNB2ckczKY=;
        b=Xkm4c04sU6P1RBLCmwgRZ+iZ6frZmy4D+gabK80dPxD627bqmmp8hLjwkibpxcrso1
         zQCELE2TTS/9BHjJLRi2IVS0mbT2JmYNvl4x83kD3uw4xTuV/FIcKsHN8hAcUnD+1Td3
         KaX9h83lddxw2LKMWyBBz53MwGwdGGZCSw9OJvQE4r92ty8vuXaojiPIb7rthEz43rUT
         rUMXqayaXMfL+YNmdo0QBw1JfyA/4WY6gsa8/VpyF9LPlklAmcCWYxP0FN1q79NfxF8u
         +3PvNRFrmfAVE0fW4hmWWTkvzY44Deyz4m935pZOmGuzk5Lsf4S73IhB+E/lKdhGy6QO
         DeGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791887258; x=1792492058;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QGAQ+SPDmvHqJzwZscytDbFjnJRM1Cy8AUNB2ckczKY=;
        b=giKy/Y8GzbXbUIYXh06DcObOox6GT396npPiltOPIShcrU5n/tBFB8uyB04fkWs3pw
         vkqn3BDbnFN+nnL8TSsa8Ba+9dsbwKAhVtiShssddGAKNI4ppZs9XnWPv/nPHMZ32VHX
         asn35P/YjnLx98i/0p93QlhQTwkX1eBf5HMPyRHAmVmK4RLYbZeNiK3eVYsXx+ASvn4F
         1ykDU2HcaNFwwdRlnbqb50uPPWrPf+XPyxTwLLInJR2r1QDeV/NwQINZW9jMGhdx6GFk
         GB86/o52S7XFR6KtSaczRryenByUaje26hMQrE62BqeMMbVBR/OHiZrARuKzR7TnsqJU
         aNPg==
X-Forwarded-Encrypted: i=1; AKwUvBxHuQLVGyNyxe/frVK+1ZIQfJRqmn0TbJ7BGfeLvnV5i2+1PS2/YIZbjEOrGgNvICK8cnAl8nOjqes=@lists.infradead.org
X-Gm-Message-State: AFq9FYKze3C6X+bTKQBhKbQQUJshmT1vbaa6nlN79miHSj7CZizPOXI0
	Texn0YjeUTwKhem4cUyDV2AVzr4BlTNkCMdRlz5yLiB+R1RCuajfoEFA1oj2+8x9FSEd5enHRdR
	twGQnptL8db9pv2+PF3Bwe02+TYEFX7OKMPdB3qL17iShLBfWq3yHucO06luX3xkNK9gF
X-Gm-Gg: AYBFou2oVrCDzMXahUriqpVrxo6jDCdjF52/nBkxl3pB25Qt/VH0mUzeAZm18GKgLhy
	3Lonroal7S5yy1xRkR1XOb/76b8ffv7x3wEGNYFAkq5e1Rq3XZleuQ5CtI5I9aUqBg3cuRg2GwF
	y/m7W8pY6vVBqjv9hFeCw6UMqaqlqCnClbEJtkc4mWh1ELcLhXyPh6ZQtStnAMgykCQcF4epMxn
	quAwghu6JszNoarz/3R1NRo0mYrA+A+OapxJjolQdXdnB2izmCtl7domKzSaIAsDzlP5QUimPnU
	D1wPz6ScRQcYAt9xJssKOACTOeCKv/PODI4BZkdIHk44EfyZfjsCjqd611oCMHhHiS7xdkJ5O5F
	cJnWlcpRVTMlgzCT2IGrqRbJgCXrGr90DLxgEh4CslBggo0DGs6UxbMRfu5hsKOLzI8/JscEq/D
	3tyy+LH6s7CkIr
X-Received: by 2002:a05:620a:2691:b0:93b:d7a2:dd2c with SMTP id af79cd13be357-93ebd2823e2mr1854077585a.60.1791887257441;
        Tue, 13 Oct 2026 03:27:37 -0700 (PDT)
X-Received: by 2002:a05:620a:2691:b0:93b:d7a2:dd2c with SMTP id af79cd13be357-93ebd2823e2mr1854072785a.60.1791887256775;
        Tue, 13 Oct 2026 03:27:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5bce8aecad1sm2774560e87.8.2026.10.13.03.27.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 03:27:35 -0700 (PDT)
Date: Tue, 13 Oct 2026 13:27:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v2 09/13] phy: qcom: edp: Add Nord voltage-swing and
 pre-emphasis tables
Message-ID: <ftif4r4l4orj7zgvssjqdtmkfj4kfahbxjx6kh4fo2dve6o33j@johl5kwn7cuz>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-9-a2ab9af954d2@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261012-nord-drv-dt-v2-9-a2ab9af954d2@oss.qualcomm.com>
X-Proofpoint-GUID: 7Q3skREGk7PwzMzFD7g4xkDLQ2peQAJP
X-Authority-Analysis: v=2.4 cv=FZuiV5+6 c=1 sm=1 tr=0 ts=6ace079a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=JfrnYn6hAAAA:8
 a=EUspDBNiAAAA:8 a=HDF95dwk5MVqU-wvWFsA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDA0MSBTYWx0ZWRfX2SU61eU4MNu6
 rPuJ/MzxkmcWZ5Wx9JUuOulr/ubIoVN7mBKcxCczAs/CBITrY8ighcNo/1s8DIae6eEcND28g6s
 OY0DGtzPQl/Qarx4Hl393H4yQdwpT1s=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDA0MSBTYWx0ZWRfX+APCa0dOIzYJ
 lss1SY0hfVD3E5r1swq1Ju7oAzoIa0DvxTDNOD00gAJsNYFQcMcfolkYbdvIefrtJmQxZ33VS0t
 Jni2+osN3cSR5put1m+LOG4LiRHwjGZWefUsWb3PR0l9FrzfopHxiTH9NzPzRYOS+wGn29O5SkS
 u/6RNx97npCUwhrp/FUIKW7ZAiVsdOg8xDVCy75S2iWGLEVywMefFPm2RNQ7iyw4XqHfWENRnt7
 LYAeHj+TdKpyyFhgeVcLm1wk7EiJfpxQGnixu3b9m1LNcX9o2JC9SZAroqS53dMxvPTRTLUqdli
 DgFNP5XTzwzXY6b9Al3fvw97VdNsZ2ginW/ZTeuu9YRHmlJL0uiB1BLBWulpg5wfI6hIirlwyNo
 sU88awljnx/0nW1Tb0vCj4exU5NSf5GYYnXPfdqsv8kL6lhkRU1mPOrDqR3Ph/ROJd/jrQ5Esqb
 QjXcPbbgdLhvH0iAzUg==
X-Proofpoint-ORIG-GUID: 7Q3skREGk7PwzMzFD7g4xkDLQ2peQAJP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 impostorscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610130041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_032739_423735_22B3DF15 
X-CRM114-Status: GOOD (  21.86  )
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

On Mon, Oct 12, 2026 at 07:02:19PM +0530, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Nord requires different TX voltage-swing and pre-emphasis levels for
> both eDP and DP modes.  Add four pairs of 4x4 tables covering
> RBR/HBR and HBR2/HBR3 for each mode, sourced from HPG Tables 2-2,
> 2-4, 2-6-a and 2-6-b, and wrap them in qcom_edp_swing_pre_emph_cfg
> descriptors.  The eDP RBR/HBR swing table reuses the existing
> edp_swing_hbr_rbr directly; all other tables are new.
> 
> Assisted-by: LLM
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 64 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 64 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index c5df1086607f..c63f721702b1 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -1538,6 +1538,70 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
>  	return PTR_ERR_OR_ZERO(phy_provider);
>  }
>  
> +static const u8 nord_edp_pre_emp_hbr_rbr[4][4] = {
> +	{ 0x05, 0x11, 0x17, 0x1d },
> +	{ 0x05, 0x11, 0x18, 0xff },
> +	{ 0x06, 0x11, 0xff, 0xff },
> +	{ 0x00, 0xff, 0xff, 0xff },
> +};
> +
> +static const u8 nord_edp_swing_hbr2_hbr3[4][4] = {
> +	{ 0x0b, 0x11, 0x17, 0x1c },
> +	{ 0x10, 0x19, 0x1f, 0xff },
> +	{ 0x19, 0x1f, 0xff, 0xff },
> +	{ 0x1f, 0xff, 0xff, 0xff },
> +};
> +
> +static const u8 nord_edp_pre_emp_hbr2_hbr3[4][4] = {
> +	{ 0x0c, 0x15, 0x19, 0x1e },
> +	{ 0x0b, 0x15, 0x19, 0xff },
> +	{ 0x0e, 0x14, 0xff, 0xff },
> +	{ 0x0d, 0xff, 0xff, 0xff },
> +};
> +
> +static const struct qcom_edp_swing_pre_emph_cfg nord_edp_swing_pre_emph_cfg = {
> +	.swing_hbr_rbr		= &edp_swing_hbr_rbr,
> +	.swing_hbr3_hbr2	= &nord_edp_swing_hbr2_hbr3,
> +	.pre_emphasis_hbr_rbr	= &nord_edp_pre_emp_hbr_rbr,
> +	.pre_emphasis_hbr3_hbr2	= &nord_edp_pre_emp_hbr2_hbr3,
> +};
> +
> +static const u8 nord_dp_swing_hbr2_hbr3[4][4] = {
> +	{ 0x02, 0x12, 0x16, 0x1a },
> +	{ 0x09, 0x19, 0x1f, 0xff },
> +	{ 0x10, 0x1f, 0xff, 0xff },
> +	{ 0x1f, 0xff, 0xff, 0xff },
> +};
> +
> +static const u8 nord_dp_pre_emp_hbr2_hbr3[4][4] = {
> +	{ 0x00, 0x0c, 0x15, 0x1b },
> +	{ 0x02, 0x0e, 0x16, 0xff },
> +	{ 0x02, 0x11, 0xff, 0xff },
> +	{ 0x04, 0xff, 0xff, 0xff },
> +};
> +
> +static const u8 nord_dp_swing_hbr_rbr[4][4] = {
> +	{ 0x07, 0x0f, 0x16, 0x1f },
> +	{ 0x11, 0x1e, 0x1f, 0xff },
> +	{ 0x16, 0x1f, 0xff, 0xff },
> +	{ 0x1f, 0xff, 0xff, 0xff },
> +};
> +
> +static const u8 nord_dp_pre_emp_hbr_rbr[4][4] = {
> +	{ 0x00, 0x0e, 0x15, 0x1a },
> +	{ 0x00, 0x0e, 0x15, 0xff },
> +	{ 0x00, 0x0e, 0xff, 0xff },
> +	{ 0x02, 0xff, 0xff, 0xff },
> +};
> +
> +static const struct qcom_edp_swing_pre_emph_cfg nord_dp_swing_pre_emph_cfg = {
> +	.swing_hbr_rbr		= &nord_dp_swing_hbr_rbr,
> +	.swing_hbr3_hbr2	= &nord_dp_swing_hbr2_hbr3,
> +	.pre_emphasis_hbr_rbr	= &nord_dp_pre_emp_hbr_rbr,
> +	.pre_emphasis_hbr3_hbr2	= &nord_dp_pre_emp_hbr2_hbr3,
> +};
> +
> +

Double empty line. But also these tables are unused at this point. Why
do you need to split the commit into multiple? You have performed
refactoring in a separate commit, that's good, now just add support for
Nord, squashing all "add Nord foo" commits.

>  static const struct of_device_id qcom_edp_phy_match_table[] = {
>  	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
>  	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },
> 
> -- 
> 2.34.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
