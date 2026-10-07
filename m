Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8616CA5FF1
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 07:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mh6V9GHUFTSEtOJXbgEdJJgVis88bQKF1fwaLmuHrZg=; b=a2qOTxyDSraguP
	ekFW20UYlXbO+ntdfGHOkTjHTW8KVkGzsbBR8zTqCoBqs3E+KLFwmlCKZNr5QMHgbIGtpaf0LXMCC
	XiuKfzLeXNzSGsjEGuFR8coUyHWHkFMQUmgZbmGWJxaTFx4EVRTp1Go2pKJpY1ic3J1zVCGE42D5v
	pMgcDy28egTqYNwVanZaY5DC6KO7juf+8/xm/zU8oWVpzMhRiE7pLCN61iQzp5OOACuec1ttvlGS2
	JNIrNTScKQCf/4ahduVDU9fTVgMKVL/Eqe4quFNVrB/hzT8ktupO0M6QSVO630UDQ2wm4ekyDTFIV
	m2hGxJoFi6GRqgA2d5ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEMOS-00000001tZT-17eF;
	Wed, 07 Oct 2026 07:48:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEMOO-00000001tZ0-3rMf
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 07:48:50 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6977jjHq152005
	for <linux-phy@lists.infradead.org>; Wed, 7 Oct 2026 07:48:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oKC0olzQ/PU2CfzdnylEFRaa
	rNGXMHbrSZbNQIRuiC0=; b=PSZMAxOgGEQEhm89sbEvTLpFWOb5QWK00OPBYrc2
	A+zE3XSaPZ1e2Duxm4SodKC91gIMcqojDtj9ItSOuB7D3UP5YGEYXzVRsiGINVyu
	mDFobZS0Ia+VVYR5Lbr/1YHMoOhcQG7woLFKK4hMHgzqv5UvFf6L7tq25ZU8AmKN
	biQ4yfs3GDusTtpcyBfi2g3Kpos5aoIXqp4QsObFzcIlXOsCdX4REqyyIv4u88bm
	KKurEAfa58ivg8ucxHkbkKFmY+8o2L5hxcPSTlY8D/iyl9lItBNoWZv2yOUKCZGy
	JxmBUDrhKcLKmeFx6OYYjvGPgYRBfR511/d+eFVtbD0Upw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5c7194hc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 07:48:48 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93cb71b1443so710829785a.2
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 00:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791359327; x=1791964127; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=oKC0olzQ/PU2CfzdnylEFRaarNGXMHbrSZbNQIRuiC0=;
        b=OlkERUE3yyklSMSUu6OU9pPU19rfQS7SJUs4eDVuAH9KIKXaoXHjoN3qiThH1RJyOp
         DvTQXhSV8AGKE3ybTuikJLU7b7TDdCrtDDpMDjoQrabypiE+jg0w8wu/9fSviY7jrSXy
         qr7532PWU4kw3LNLrtmuRIW0PBjUn0EMaLoXlfOMBmfKgeCBiC+3A/0izHG8kCFgdhi5
         TfNQcxNtDsQLBkDjdYlnlwcObYsxHIImpdf88PaUEDWMgy2JD2R4tpajO3+sqZZu7TEo
         5gU/gcv/RFlnbiJysgimxMDHWRikNQLwZ/Ac5DXlAOdsLScXJ1hLACKJa//lUzJjPV/I
         gEMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791359327; x=1791964127;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oKC0olzQ/PU2CfzdnylEFRaarNGXMHbrSZbNQIRuiC0=;
        b=UG+YSWPSYS842s5vcceHB3jTb4coTL/mtk2ziQa/ajzDeVcASH30yspQ1ABG0fpAwW
         dsjNUz+u4rC/s0qE7Jn29rvVMd8PV+h6C1yI+uzAjPQv4Qk1wsrbEeeDe46miqxaL1uk
         mEfgVFn+7o01x/WdKtimrppWAsr8k6ofdZm4KXSrkDNjpxjjGqs6WtCnG6dmicOFJoAj
         +fkt8KSS6E0QFSavGlQUFzYEJNPeUO4AIXp4XdjLYB6wXqvTfVooXWEy0EA/DKTlKDLs
         8puCast2l7VAdPAzy717rTGg5xB67jHyxCqsQSIIg0GTldLlS2wJiOdvPgWdqUEa7qXl
         68Xw==
X-Forwarded-Encrypted: i=1; AKwUvByxW9Bskhis04yL5mzWeoaGfCOM2WcoLGCUOAnisN0SncMZlAkjnP8TP1S7/haC9CFZRRjgD5TFdLE=@lists.infradead.org
X-Gm-Message-State: AFuF++l2fskC+DlnDyISpEG0p8jLt9VddDox4GlvTeOC54oNWfYHvfit
	NBPBM0oU+mlZy1qmBcrTTYlMX3yMvHx+rYJsOFUCv7nZP6xbooL71nugGVztPLxnub5bDYswta4
	i0mlZqUjjcOdC3PxOxJxdFolbqi9P58oXFqpQa1sdvHY3r5Z0GEOEmZo0nN/Zjk7A1Yne
X-Gm-Gg: AYBFou0JJzOz0PHR89rXJJ+KeFJBtzVtRt1JBcs0L5pDwY+W5w3K0Kg0kINLVgi3rCZ
	Tn4kNoMp3W8UOUJFEjEdW9J8mD0aZqyIb9U+z2uUQS/Lytt0VnDW2/wISQFtaGlWYAMe0BTSWRr
	avOHTKm2MLFPd2wn2wpfiXH9mR8BQNbnzC3etFtMl/lZMcRk4Or/4v+gBFNg5zzM2mEpSnydFLI
	TGeN6R1UTZQQ1HDngFSj7L7dy0rWC2YAfWmj6txuFXEQ38vDdaTuGA9TkcUxexBfaDsLG5WKZYQ
	WEiDWhoCwQ5hKUufEAD0ECAnuVCXaNWAvQfT//mdj6wdbfXLQuyCsuZwdK3DmMIN9HN1fRHNz/T
	E2rbdyTw8I9khHUtBK9FWJB8I/H44yDrOQZ6d65E3kcBW5KaHq5IjmlbZg/fg0T0VqoLULZHos1
	TzC0ilaGrMzO8e
X-Received: by 2002:a05:620a:4802:b0:93e:9834:3863 with SMTP id af79cd13be357-93e9b775f0bmr271074685a.15.1791359327195;
        Wed, 07 Oct 2026 00:48:47 -0700 (PDT)
X-Received: by 2002:a05:620a:4802:b0:93e:9834:3863 with SMTP id af79cd13be357-93e9b775f0bmr271070585a.15.1791359326627;
        Wed, 07 Oct 2026 00:48:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5bccfe9c6e5sm448023e87.55.2026.10.07.00.48.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2026 00:48:44 -0700 (PDT)
Date: Wed, 7 Oct 2026 10:48:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 5/5] phy: qcom-qmp-ufs: Add Glymur support
Message-ID: <zovl7lrhlleflaewk32o4wofr4bzm2bmkdnakev47peijrnkfe@p3ixrxltdpcm>
References: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
 <20261007-glymur_ufs_qcb_enablement-v3-5-84cf4f861415@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261007-glymur_ufs_qcb_enablement-v3-5-84cf4f861415@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA3MDAzMCBTYWx0ZWRfX8VgAG35J2i9l
 B0Bj+yKF+P4QUwRhWsb9lhe76iPk2Wri3un94/atBHnXwyrZF3YZlS6NJMmcDawjqx0SDoBqfSK
 WJicAO/OhwPn+yfZ3ojdhZAaUMix4o0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA3MDAzMCBTYWx0ZWRfXzvf0vJ6P25r9
 tnuWG5HIm1zbpSI4a/RkCTFUOxY/hAMSGWSagteEqs9P3/YOcDH5ZSR60MGoqBnmcr5TcnovCDJ
 8LA2AcDece8nOcpvZfivFhVOtbR5nxLYewGs4VL0vNtLV5WC00LboXf7BKn08974+CVlw9zstl2
 vjbHE0y9tWpo+l6Zhh7FK0n/icSPeSqb4p6Vz2h7Qz77c3XTEZXGVHR69Fxr5+30QXZYi7DyiwN
 I3yD61Kgfn3iH1BUCnjvTKA6lfzD03/EMhXlXTp223siz0hb/IRLwPQIRZs3Ri4uIB1pVbZKqKV
 1HaRyu666lGz0cCLXMiFfcyk9IBH//xQNwgoJMaoNCBE6hWXdSPvGHLpbcPGhAEvHdNQELi5nMg
 vN00GPRBB6M2I/WzAaznyW2rRl5Od6+EJqrFUdqUa+TBdB+XfUq61rhZK8M214AEEzaPtVaMrJ3
 HVquL49Je6dCpDF4W8A==
X-Proofpoint-GUID: wFewm0RwmRlvim3i9VRBNRSDuxMccZp9
X-Proofpoint-ORIG-GUID: wFewm0RwmRlvim3i9VRBNRSDuxMccZp9
X-Authority-Analysis: v=2.4 cv=LvYHWXdc c=1 sm=1 tr=0 ts=6ac5f960 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=BBNwevgwxSeHGHzN-EcA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-07_03,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 adultscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610070030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_004849_032800_C5A5316E 
X-CRM114-Status: GOOD (  13.94  )
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

On Wed, Oct 07, 2026 at 11:59:38AM +0530, Pradeep P V K wrote:
> Add the init sequence tables and config for the UFS QMP phy found in
> the Glymur SoC.
> 
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 99 +++++++++++++++++++++++++++++++++
>  1 file changed, 99 insertions(+)
> 
> +	.offsets		= &qmp_ufs_offsets_v6,

So, is it a PHY using v6 offsets, but v7 registers inside?

> +	.max_supported_gear	= UFS_HS_G5,
> +
> +	.vreg_list		= glymur_ufsphy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(glymur_ufsphy_vreg_l),
> +	.regs			= ufsphy_v6_regs_layout,

v7

> +};
> +
>  static const struct qmp_phy_cfg milos_ufsphy_cfg = {
>  	.lanes			= 2,
>  

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
