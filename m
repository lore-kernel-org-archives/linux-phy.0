Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF58CCCA462
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ATsWEgTWmpLEh91EGFEFgg0sf/YqfdnIENYva9+GGo=; b=d3R3QpdmZvN92o
	q/f9Z0Hd3UqKZpI2uRoX6UrCp4FaRH4G9zcMTkirU4v4whYz1tOj6FziRnKokQ0n9Eb5Cm1gcHMjx
	/uH5I26I9jrpFh1aQmA3iHnqb3wUvLWWJdaWWXgW56VsRkdIOlzokmAdv4Rvq9iS2OBUAN/2dvhrQ
	4ZUl4qpjJOTBa7aPuhB46AVojjItWjZk+J8toCCGnmKKyN5ZcsFKPDrV7P87Y3xcAfAyFHaH2eGNX
	GxzjRK4G6qW89vQju80/qr/ec8yoEY3WEMlF0sCU4QL7BOIAR8cuRReQiNsDCnEgp42ALaKTMVF/a
	ZxJYGhkTLtVOC2tUzNMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHgE5-00000002ly1-1yXv;
	Fri, 16 Oct 2026 11:35:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHgE1-00000002lxQ-0yoy
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 11:35:51 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69GAAMCK488628
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 11:35:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KSPOXhDQq0GCi+jd+Z0hFBpW+y/WgMIH+G9un9D0uIU=; b=UDIoMF+3AKQJpFsQ
	N/x3DzaGyPlgboZYc0tR4E5T44I0ha7A/G2h6BxyrbGb7ZSF+G3L7/veJRUAJ3QW
	BTAK7knRif21xfKRaGdP/AHY+akjW9ZTNRFnoYA4GACa08xjQcbHH/Uqtiecm6HY
	t5Zy6/IPjf7dI4rKIeAmv5Kd56vK5IZxVjTnlKKzcfgkKyQgDV7BdT5DOSI+K3bp
	0hu65RBdJFr/SvaCB26hWBU7qrL67qspevVgQbNVNwCkVWxRUuVZJcG2kvMbJbwu
	XuKJXeliFeRKTj9jH0rtnKXq4EjPk5JSNajkIXtkPK+1NYqSXanVQsGUm62hsTjr
	ugeWqw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hbcjt9n6u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 11:35:48 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cd63a7cdfb3so1495187a12.1
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 04:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792150548; x=1792755348; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=KSPOXhDQq0GCi+jd+Z0hFBpW+y/WgMIH+G9un9D0uIU=;
        b=YUn7gT6NgJALXVToVVVMRvap5RAh+PXVo0Bpmw8QDiMHRWRgrS2zqovychA8mO5Jdw
         XJeYHlG1kQ2/KhvOIvpPzCAfaAnb6rPry3BKba8JJVEtDLjwv5qARzuLagHAGfKljCM4
         YcPafWhDJK3mSOR2cU53WYlAPmavfA/+B9FfJWLDbXaZTl3Ddd27sd7VrXEt0qQzlU1q
         qcli9SjZOfRN2l280wXp+Wa4xs0Z909a7DV/W3xWjqxQ03Zz3XDMEtsemUKqKT7StQQB
         Z2wgwbKSQg1VilapnEnVSrIF6yhbyeNPAnOOElNNHT7oj/U/rIozo5Lxgq/Pdp2v9DhR
         W8/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792150548; x=1792755348;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KSPOXhDQq0GCi+jd+Z0hFBpW+y/WgMIH+G9un9D0uIU=;
        b=vjRb5y7lwAW2XU+CoqkFsl5iTO9XQFJggFM1SrzkxJIIo16rhKYXzqcKvjxsfLxpCi
         vprqlmVfyFjnK23tvMF4ad07Y5jtVPlXVbOFp3uLnjKg+OeIai9Gr4ejSdohECZ7pXSd
         mXgpu0DKbwEaMXBzQGaDshOHcjckCs+GGCCbLNwNATiHsQ8WYhnLQabSpMBu4fy6rlCy
         66w/PUWLXLTUZd6Vi2kqIeWKWai50t5hCoRNP5bo4/9XAbE6ZtrBRqoRCfveJTQrNCIw
         C1Gs3wWCOmJYED57g6pYzPPkM3YFOVD5HEmlcCWT3HA05ZjJUxST+lV+XVQYHpc5LDcf
         S9IQ==
X-Forwarded-Encrypted: i=1; AKwUvBwgnYiKuV1uKa9Iq1IPnjvmw1arIQID7c7DLTEnVxnqU5kZNAR5VGBVe5s8aNW/UxWl+t2KuFOm/LE=@lists.infradead.org
X-Gm-Message-State: AFq9FYLu2g92m9FXHKHHp/1lADM3i9KqYxfKFMjtK1ag81xAHn2kPPV5
	/sUqksHVGpHxZBNnZucKWUI0dDOx6D4vA7iT86ZD9t+juuGv8vjYMy3L+XIHqiXGnKKEsjT4c2D
	Tg1bQRxzaEI5k4gDccZt1i5Jmng9nPQHo+hup55gdf6WTvamJ6vGZRtJi/XDvU8IJ8Plt
X-Gm-Gg: AYBFou1eEatkXnVfS2cx/Db702YbdUCnkbrEDsS9pfS1jVZncd0Fhijc0Pcra4iFmyX
	+WoUALn3mIQN9DlSaBzkD3Mpn2ptAEjNKQEWkBlYoeQUY66BiH5WzA0nDyh3jAkQzuBY7QLo0Rq
	JPN/fK5/2gJ7/P0nEARniEPZhsP34Tokq3dTtJ8C/7PEuAs9Z8ZlwqQHjCYZ/oELA/ewwslbmaY
	1QU3WAHFDnLLalL11DSEzRGUobe3JUfWQC5HuS5Is2cGRTHo1fiN8ZmMsN1D/ozOnF+hMSqppgh
	lbYRn3FoBFh3VrdkfLCumbX7V4Bi/sEaLS6freNk7WTr30YtjihNPS8AqAgyFCDTHxzZTppG0iT
	cw8r8oCb/a3UWArRThEzE9DV/HQI=
X-Received: by 2002:a05:6a21:6812:b0:3dd:a196:3094 with SMTP id adf61e73a8af0-3e16bf09c3amr16527922637.68.1792150547953;
        Fri, 16 Oct 2026 04:35:47 -0700 (PDT)
X-Received: by 2002:a05:6a21:6812:b0:3dd:a196:3094 with SMTP id adf61e73a8af0-3e16bf09c3amr16527889637.68.1792150547498;
        Fri, 16 Oct 2026 04:35:47 -0700 (PDT)
Received: from [10.206.111.19] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89f58017c70sm970158b3a.48.2026.10.16.04.35.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 04:35:47 -0700 (PDT)
Message-ID: <010f8a27-e058-4c8b-8681-24df30c29853@oss.qualcomm.com>
Date: Fri, 16 Oct 2026 17:05:37 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Subject: Re: [PATCH RFC v2 4/4] phy: qcom-mipi-csi2: Add C-PHY support for
 X1E80100
To: geocausa@gmail.com, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Suresh Vankadara <svankada@qti.qualcomm.com>, tjose@qti.qualcomm.com,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20261016-x1e-cphy-rfc-v2-0-377654253193@gmail.com>
 <20261016-x1e-cphy-rfc-v2-4-377654253193@gmail.com>
Content-Language: en-US
In-Reply-To: <20261016-x1e-cphy-rfc-v2-4-377654253193@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDA0NiBTYWx0ZWRfX0QP7liiujZLk
 oMJ2QR3YgBS0JR8/2fqf7ShlhcK85d+3tuIagyJ6KfUak3u5uSofZmn9lAyklJCGw66TLWdZgsZ
 +OSw+FnJ1i9zuOhQIokzeLfuLkKJPUOGWBlmTtLLj6ZsP4a3vB6LiVHoxkIa+HCX3Len4h2jcAF
 DNkL7ECg3AT/aUayL6pM7jzr/+cgri+BGPkXKSvhnlmHG/xbhzbw/d1S4FVRzT1YKBRKNFvQ3+i
 4+Qvx0cVH6DoXT3RjDOqTBQeOMgs1vokS4aLd5djc7d4SKIENA38/r1Iqk1398skviCIHYslNiY
 yw0UrKjQmUwiYKdtb3h5FHlxcpVUK2vKXweUopyf9KzCw8n0YBpAHJHn6JGmlGDJf8CcGJlkczY
 i61kKJNhybv/tF8l9pn5MOMyI4sAAxZai97SICCEOMZWEFMOavicRzAgeKYZg5+QfQRbAZY31wf
 cXJiiDXtsPVBiSfMabg==
X-Proofpoint-ORIG-GUID: zWr0agvSlVUmrW6WCkgi3z3Nh47AWK4B
X-Proofpoint-GUID: zWr0agvSlVUmrW6WCkgi3z3Nh47AWK4B
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDA0NiBTYWx0ZWRfX6ZVYfuerwO0v
 Qrpb0RNSZ6ZZouttqjhI1qWjzcz3/tGiaQXPQTJtoL+APKI9f7GRZ5x9wsAiMShwTkEnwDt1kZU
 vbMRUtPjV9kSfNNBhsdUeXSKXDSoxRY=
X-Authority-Analysis: v=2.4 cv=VpS2kO2n c=1 sm=1 tr=0 ts=6ad20c14 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=F08ZnmPqtNv272u8dioA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-16_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 phishscore=0 clxscore=1015
 malwarescore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610160046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_043549_283855_18A26BD6 
X-CRM114-Status: UNSURE (   8.99  )
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



On 16-10-2026 16:27, George Neacsu via B4 Relay wrote:
> +	{.reg_addr = 0x0a54, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0a40, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0a60, .reg_data = 0xa8, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0a84, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0a90, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
> +
> +	/* csiphy_reset_exit_reg_2_1_2, 3PH */
> +	{.reg_addr = 0x1000, .reg_data = 0x0e, .delay_us = 3048,
> +	 .param_type = CSIPHY_DEFAULT_PARAMS},
> +};
> +
I checked the register settings and they look good to me.

Can we write the delay value in hex as well, to keep the table
formatting consistent.
-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
