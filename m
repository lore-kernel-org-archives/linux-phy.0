Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 339E6C44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 14:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qkkLsIuW+lwwldThdZfsaSwiH7MvVKUhZW3LxN454TY=; b=www2FwRO+qxiN5
	/5OsS9zgOQJ6qXGBblXrwjYSi181DkxZKYvmBnv2+PfFHqT8IiOUUpkIfcndXBtBWW4NIMNgSdB77
	izmOaSkHFiJI9DndIb0SVRr9gsuviXimlGDA1kUvEstUUCUTeYb/avnHqiVeWC0jfM0YngfNrUaI2
	Lod9fl5J/xXRqdCttqVHD7Yu8iin9ir+jh5QJ+mn7EVh0CF6MKf23o+jWcCt1hPcSOHkf7ewMWXC2
	LBpfoEYTivf9DH55rKrlmK6W8L81u8DFewbxGzNGv+nT2rsPnI5cOgsiaLVVIQHVw2v+UEstFY1b7
	V4UHQmuofla/igODZBlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlojp-00000006vfN-2zrm;
	Mon, 20 Jul 2026 14:12:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlojm-00000006vcx-0kER
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 14:12:56 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDrGDJ2807784
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:12:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lF8karFkg0wDdEIf59u76yME
	jWKKdqIYaXBpJmFfZtY=; b=P9jylU1OWDZDvCUMZurHCGquKJfn9Kz1PKdfu3/9
	PbZOR0XqFH+7RQtryW4etriqR3XYE0+vSv3xdgvr3SGaF9oRIVvybAor4ItxulnO
	qrMfVAUf6OK+TxRDuBYuAPHUIHGIsiC6EeQwZvX7NQqRqV8JAgBfNJLb03dlXH75
	uyY7QEPw6LuBFdw13JvcnHzUKQ77EIooJJHYvJQKeKI8sVl2R9xR45SG/fb6BW2s
	Rw+mCBs5itpzAbAyJzo309xdII/bR3R2TXLa05LQTjf1hu+6+8+1JrsS3VCW6+Nk
	loRRhHr7TTsCNocwtg/XJH5rKNwLoWX3vEBvuvCtEwU/Hw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhgre9a7a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:12:53 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51bf321d786so86829301cf.1
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 07:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784556772; x=1785161572; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=lF8karFkg0wDdEIf59u76yMEjWKKdqIYaXBpJmFfZtY=;
        b=Z6KyAl19g2uE686V6JaPXUx4DhOZAF8YlpyUq1Z0w3Tp62zWOak0uPIA9Y9Blr+yaW
         BXjBs1BPe/3GTUHi2V4wlW5lsy2WEsA2ad7WyHvv6pw0t2HeF8vQGIewrpBGaW+1t7HX
         RsdvnVGgT3SSCwKFHTbNq0D1qJoLu8JGn/84b7lkRYXy7ssZAAMmZd4ch0W//WrUfphs
         sXqGeaOfXJJrshCiD9zzMfIPJLsbrPQjjnVlPYnTboH/2cnDF3FAgsaGZwbzf8z5uwoK
         SOAFSSwEffiHZl+5JiHB7M+tsR8Kxu6h204hBPITvth5iNv8I75ZUs9W2ZFBOULFf7UD
         CQ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784556772; x=1785161572;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lF8karFkg0wDdEIf59u76yMEjWKKdqIYaXBpJmFfZtY=;
        b=hA4dRNARUKb6EDLvzs12V0LKQ8m+b9P0xAH0Z/WqFOLn0m8My5dxKNqvVmTpWkIdQV
         Hju9DoPp/flxLqn8tsyR2z0Lq636Dc0lBk/knPkccutSVBFFe6gkJhaxv4BDMGIZDONH
         iMpmJlY4tQExDRey3kjdrsmbhmtrE3tNICv3Ri+JXDz7sLY/cTVc+DO0MCPDYz7At2n/
         6acMYTi/AiES5+flVZA9HRJv34R7jilhJYZhffltiyYA7gytiGeGrLSv94eNyph+Gcj4
         zScK8UN45sHVyq0d5fPAsSQ+QO3izkMzUa87Obz6bDfA4pXSNIAeWfPPGbQkaqRY55p9
         4xzA==
X-Forwarded-Encrypted: i=1; AHgh+RqYmudkzxrRjQKh4eDnWd/SLugy6FhvWTazEEgg/2lDhDVC/PSTYqkuWN3zAzvISkmP+oBwJF4NaQY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDYzyzQIZ8wNAGEj2gWw4ywO0tWy2Swi6qudy4syBKXpRC9cil
	gig05x9rctowhhTzRDWEdj66Yy2I5VRKfM/+pzTtu66OXX2E+I5rVDgdnSFEyuYGc8qQEZG1XDU
	bwyWcYpAfCi+hW2vCP/y3ACUhe2NvudRYGcggwpYTa8qQBPg4Hygavv3o+uclaCPaj7X5
X-Gm-Gg: AfdE7cnHFsHLQdLLsFjQMSFTx08W8Fepb1QDT5F9Bo7pHfmOV1uOJ7ovS+3HViHIHF4
	CFhxZDgm0qeUGJwmSC7oUPl1S5TatsG03WswEC9vkkLKzhlCsvJkqLr12fmiOD3oneqsxXQSRpU
	Ckbgx49sV06/oSAPcvRQowrh17Gi/atDXDSpxafe07xYetQAkuhrbkdhHmZ3uA2m7xAvB8hodLI
	4k2oB8VKQCoo9Cd2TpdBZoEmbSe89hwtEWPKB0Yn8Tpv0GB1zTDoIoGtL1OoDvRLYO53viVF7kT
	9Cxhv0iOhNg/vqfTWukyAyTHwSBIqS42rXNFl8S7sKfTdaM56655ybmJxIgTV+WN65PsxBBQNR+
	zn8Wc0v3av7HS9globl3uWlZnhQNDT2h5qHl9vXy5l+ppZkKoxXbN45/LEEt/ddnHXdGF0p2HY1
	TSPGogFwo+7xU/qw==
X-Received: by 2002:a05:622a:2b0f:b0:51c:b8fa:395b with SMTP id d75a77b69052e-5213eb7cb5amr135131481cf.66.1784556772367;
        Mon, 20 Jul 2026 07:12:52 -0700 (PDT)
X-Received: by 2002:a05:622a:2b0f:b0:51c:b8fa:395b with SMTP id d75a77b69052e-5213eb7cb5amr135130821cf.66.1784556771698;
        Mon, 20 Jul 2026 07:12:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291e25290sm2371565e87.73.2026.07.20.07.12.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 07:12:50 -0700 (PDT)
Date: Mon, 20 Jul 2026 17:12:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Sashiko <sashiko-bot@kernel.org>
Subject: Re: [PATCH v4 3/8] phy: rockchip: samsung-hdptx: Fix rate
 recalculation for 3.2GHz FRL
Message-ID: <al4s4LH2Om9bZ-X9@umbar.lan>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
 <20260612-hdptx-clk-fixes-v4-3-ce5e1d456cda@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612-hdptx-clk-fixes-v4-3-ce5e1d456cda@collabora.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE1OCBTYWx0ZWRfX6kluxahBTplc
 dB55/zV9o0U4sRl1YRsgzdtkrJgxJOyS1NSTTOsswrRev+v37RkXV8ThXq1q+hlF0LakvSWEMSY
 cunKN08GNoa1tDmhTH3L7BsIyjnVMe8=
X-Proofpoint-GUID: M4-Y21yfl2GfUyi3bV5d1xlbly6CYG26
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE1OCBTYWx0ZWRfX1u+HyxXooeNG
 wORaLm8YCGzBzbq6mOyQUzgxCIOhVCyJZYxLV1z5GsDzuou3/ahCqbNhDCmD9kVz0bTHWMXksbs
 P9YFsA87djqq+Kv/0ms+32/MDl8ji+gzPftw4PgBkuihNXacnmIbOIN4IM5wCh5I9S91ql23RWG
 UHaO6NGCXOhg03cWlp3JzdBY5bJatM12+5y+DQ0qHIlVmxR++WIefpidXGYdL/df7wkub1auUzD
 H4VdwX3+yIBQIH2iAql3pASwXb3o2qZCM0oXbU9z7QGyeTVKURO748gj/SIKppCtuCwBghJB5Tb
 sU2sis6X8oZYKM0D6/y+T+aQZU9+CwTO9WDW3sgUj0WUPCcaIqvcwc9ltUDOCfOFVPuZwCHNN4Z
 uj/dPeNFQwVlNCMtJ5qs3vDfNB11zAVqbWVQ6dnVswA/bWS2t3jbm74oiOqHgCJxf2JFZzdbZJF
 H1SXWx1AC+p8KwOP+Yw==
X-Proofpoint-ORIG-GUID: M4-Y21yfl2GfUyi3bV5d1xlbly6CYG26
X-Authority-Analysis: v=2.4 cv=foLsol4f c=1 sm=1 tr=0 ts=6a5e2ce5 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=c92rfblmAAAA:8
 a=QX4gbG5DAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=6btzFAMt-cuNwz31USQA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=GvGzcOZaWPEFPQC_NcjD:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 priorityscore=1501 spamscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 malwarescore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_071254_335020_A542470C 
X-CRM114-Status: GOOD (  14.12  )
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

On Fri, Jun 12, 2026 at 02:45:22AM +0300, Cristian Ciocaltea wrote:
> rk_hdptx_phy_clk_calc_rate_from_pll_cfg() is currently unable to handle
> cascade mode for the 3.2GHz FRL operating mode, as it relies solely on
> LCPLL_LCVCO_MODE_EN_MASK to determinate the rate from the
> rk_hdptx_frl_lcpll_cfg array.  Since there is no entry for this
> particular rate, the function returns 0.
> 
> This is the only rate which requires LC_REF_CLK_SEL to be set in
> GRF_HDPTX_CON0, hence extend the FRL matching accordingly.
> 
> Reported-by: Sashiko <sashiko-bot@kernel.org>
> Closes: https://sashiko.dev/#/patchset/20260611-hdptx-clk-fixes-v3-0-67b1b0c00e16@collabora.com?part=1
> Fixes: de5dba833118 ("phy: rockchip: samsung-hdptx: Add HDMI 2.1 FRL support")
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 33 ++++++++++++++++-------
>  1 file changed, 24 insertions(+), 9 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
