Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A48D0C44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 13:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiruaoXQIfuCHzgrOrYjM7WqrDEH1Q8aYHXVH5hfzN8=; b=nwbLHBCupq/J41
	Vc2Ox2ZnDntEQLESOhEweNMJVxt7D3InDOk5jXjMHzvhsNpcYIMBvXZdp5x/m82sW8HuyxKYFQH7R
	CeWHozbcASHuLxJuLiWb9sGB6aMXWg1zU2k4QZYLcQNb42fj90DZNvitGm5qwTqZDPoqlnwe5mHo5
	u1qLhhDQkuv8PGVHNpp+bi9vlY3caeZtf9Ma48gUR08u/PFU+99H53wOM9jSgVp66ttmTB/HaiGEO
	qSQJfo003epy0MB2ZroJvJoANayE1XsCk66M2cLT67+Wed9BHEB4CRq41VzwqXpeGNHzJskqRBEmf
	t3DRB7c2BnaXU+uE354Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlnyx-00000006nbL-1P5T;
	Mon, 20 Jul 2026 13:24:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlnys-00000006nYU-15dr
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 13:24:28 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KAvSGw2430339
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 13:24:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2rnuTTxS3dtHAIgoofax5iZiwmNO+2ul3JOTWMDYSu8=; b=eFxtgw5wut5B92w3
	RtZVhajGc7llr/dfSaSe83kq00XNfrpnd8/z4naj0xu1FB2kRE5ClT3jFInM4NUk
	OYC/SDqCunEnuJAXFLaWEamwJE+jF5XzAECMf0TH8KGT2GCGKsBD8RkQNevWqaUe
	SK29H3kDJuKVntvjF3xkn3T/XNJ0RV7v4Cai3cKyn1xib7zOJQVepqd0zgt1VCQN
	D3OTVNOlrhrltPMuOxNITi9kr6IQGWHxBm/b4Nhd3r82vSAGMSCSGnDWu/m7z2Zx
	I4Ku6WhSOp1WwCOM61lpaFPN07QxjYiAtxTHCypTFVRmvMibPCSx0+cK0rn/r8f7
	HoC55g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhhgyrtku-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 13:24:25 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51c1e6f602cso146966771cf.3
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 06:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784553864; x=1785158664; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=2rnuTTxS3dtHAIgoofax5iZiwmNO+2ul3JOTWMDYSu8=;
        b=DQMugsXOJKYqSp46+HQNvJQdI46KKu0cmkfSqgB3rfcbiPbPMsguqEBThY5DLmqXcu
         BsNyRiIdknDjxE8Ty3YoR6cxcwD1ettFxmDNeZUQQ/tsiZxpcR/emz7jxTLf8Ps5y6SY
         zJRjLNYmOZI7+u5BYFawc3HPiXjarMd68Xd78opBOjxI4/3ITVP9DnKsoFLkQRSiDbv5
         Dt9DWhUA+k6+MSP1iMvgR/JNxkLpquISZxbx1QQJztR9bMxA8SrVggDCugfUEi/3rSUL
         wJRANaFfsC0m4mdW3hPtxxHV8g1lKONpKp02vhqc1Hfr/gx0inSLpP+Fq7hpkvKAjkdO
         gqIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784553864; x=1785158664;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=2rnuTTxS3dtHAIgoofax5iZiwmNO+2ul3JOTWMDYSu8=;
        b=TdVniC7uNyHoDsYBfW+6xKddel7eKVcPgzZOLHURT1Zx5zrVSJcqyfaK3v4azeZTLf
         rDoptfpa88l4y0TkRxf5bnf66tHWJZHVZzme0BOLWiLyUhGB0v4Uyllw9j9cuThL9TMB
         8QjY1++bivxr7Ew9BLKVKSndwTSTHTkcSo1bVv+0XiqE2mosvPSWJvPHjmnmL9BA63RA
         Rx1RviTN2uHeTqPm61irLiq++GAaHLRPRT/DllsCgjwJEa0ZQ0xZ5OykO5b4i6zrHYvm
         9CHo0xpI2/Bz+qmORrKCO5id1oaXl+SFlFHPeIk7b9Ef1sJmNFj3taSU/NriGku/JuSa
         SGYw==
X-Forwarded-Encrypted: i=1; AHgh+RoL2O4VjClBLNReFuKNHvYd3lQTO6rs/toJsapgnRGPqXkbGt8BrfHxRV1b3sakoX0/RrgSE/BhW20=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyfjm1Ribl2MHYI6AEXqWSYErCyRtUz0hbpWWDWOSOw588Tct+S
	Nqh8KQtDvcqUy2ChvlCjJCtMgryEHyqxLetV5TDKh4UbRwODt+wjuL0vJNFZ0Jn22bU7I+c4JaW
	xDti5sqwgTkyVGi5ns3+SlZHCMZKlFhrVCz3CTx6PUwnlv13eq5LrJDs2q4dha86mOrkC
X-Gm-Gg: AfdE7cmyHGpyX0l+FjbMfyJ7lNPa6cSvlBuS+YDURjJ1mx95P24YDARwHwPR6zG3zGi
	X5eaQVJh4Hp1Abkt7zvavsfEA1m7PjPqqbqitUvR6jdFrc/TS4sW4GJfP+0vMKZhIcsUmhTkDt5
	i7kR/HR3wOx4dUrNB8ZHVAiuqcM0pSU/YYijxmntxY099krHwQJsgEZ6Z1SDWRWpVaKfQSN4gqJ
	A4IPjqcgCBiL424D3/Rvyd0044Vlzo0xSsUYoKNXjP5fpJgAZW0HBOBxJKZNp8Vj+/qp/t0x0C2
	KE/+cN4v+94udgTwcGBqxLeQlEhzemQRLoQ7B8cISP9Jt6ti7ibQ00jAHwgtlznPsi0tNxDcYsk
	TbGCP/VZ+vKoWooqUXTZZ2fkn3onStRDuDZ519J34huyR7z8EN5wPDd7hCA+Qwpbm8ER5HB5XrS
	qihuQeMLYcuyXTrA==
X-Received: by 2002:a05:622a:4110:b0:51a:8b64:69e0 with SMTP id d75a77b69052e-5213d2b7109mr130718351cf.11.1784553864348;
        Mon, 20 Jul 2026 06:24:24 -0700 (PDT)
X-Received: by 2002:a05:622a:4110:b0:51a:8b64:69e0 with SMTP id d75a77b69052e-5213d2b7109mr130717871cf.11.1784553863758;
        Mon, 20 Jul 2026 06:24:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291e0ea8dsm2337558e87.41.2026.07.20.06.24.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 06:24:22 -0700 (PDT)
Date: Mon, 20 Jul 2026 16:24:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Thomas =?iso-8859-1?Q?Niederpr=FCm?= <dubito@online.de>,
        Simon Wright <simon@symple.nz>
Subject: Re: [PATCH v4 1/8] phy: rockchip: samsung-hdptx: Fix rate
 recalculation for high bpc
Message-ID: <al4hhLKoufegMPAg@umbar.lan>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
 <20260612-hdptx-clk-fixes-v4-1-ce5e1d456cda@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612-hdptx-clk-fixes-v4-1-ce5e1d456cda@collabora.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE0OSBTYWx0ZWRfXwmmFeMCy4hT/
 KOWOEkuMnYC95B02tTTcR+3LQ4zXdyNhr2juL1Gi4gJvMFrIoGQiPYEYLzEPXVygPEeGOLEwTLm
 qMifNnQ1S74LYGEXDEkOHBw+nxO3cUY=
X-Authority-Analysis: v=2.4 cv=LK9WhpW9 c=1 sm=1 tr=0 ts=6a5e2189 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=LBX7SfcbrNp00noYVVsA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: Yuf4dcuWZ9z-dNpTqewAOZdU92aiVj8M
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE0OSBTYWx0ZWRfX7aMMz4Gw9DC4
 spzeazjcxtq0XjuFlexhUtEDhZ4Qw3SEKLgHvJOfBsTtel6UgHRpvyBJ5/wvAfJixQ6UkzG+GM3
 +/URQbWqgjr9cJNGpBGrxw+ZTwcgWLv+c2YjSKFb4T6qW5T5vEaInzqOcpeCPwygWPbIR2HTGzI
 jOnCIF++EOBoNVVZSjckOEV1+5n05QmfG00A1C9Nxnknvw6cNMvnd5OvxS7qvSdQDu8ydYluIVX
 SDAiqJVrjpHMIuq1iqAl5oBv6XGfW1/sswPZpI2d75Ogr4v5+fAm52SJdZcgGCZtX8HrI4X/x5T
 jhAvZ6kAd6d1dqt/0tn4/mh3uYWLZjUIHZ/GSaIwHL6IOrE96v9Iw56hxkWD3tvRxtn08dY+EpA
 GrqhmWU0T3fHLSmfPPoxwjFJis2ELSMVzTF6VOoh5HCilsLVKdmDL7slPoqjeCRTxRbxsWGcb0N
 Nc+ga45keszIdSv+3fg==
X-Proofpoint-GUID: Yuf4dcuWZ9z-dNpTqewAOZdU92aiVj8M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_02,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 phishscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_062426_415234_4C30E00F 
X-CRM114-Status: GOOD (  15.44  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Fri, Jun 12, 2026 at 02:45:20AM +0300, Cristian Ciocaltea wrote:
> The PHY PLL can be programmed by an external component, e.g. the
> bootloader, just before the recalc_rate() callback is invoked during
> devm_clk_hw_register() in the probe path.
> =

> Therefore rk_hdptx_phy_clk_recalc_rate() finds the PLL enabled and
> attempts to compute the clock rate, while making use of the bpc value
> from the HDMI PHY configuration, which always defaults to 8 because
> phy_configure() was not run at that point.  As a consequence, the
> (re)calculated rate is incorrect when the actual bpc was higher than 8.
> =

> Do not rely on any of the hdmi_cfg members when computing the clock rate
> and, instead, read the required input data (i.e. bpc), directly from the
> hardware registers.
> =

> Fixes: 3481fc04d969 ("phy: rockchip: samsung-hdptx: Compute clk rate from=
 PLL config")
> Tested-by: Thomas Niederpr=FCm <dubito@online.de>
> Tested-by: Simon Wright <simon@symple.nz>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 13 ++++---------
>  1 file changed, 4 insertions(+), 9 deletions(-)
> =


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
