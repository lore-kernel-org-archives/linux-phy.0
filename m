Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A874CC6B08
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 09:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PH0WAe6T5NHr9Z5qkd+oMp3KHOFTMAzMqx9BwFE2bQk=; b=CuueV6nVmG85fo
	Dzk8JMHDAJ06oYnFRZCCHXAm70oJS7aGlBlXiX/luf9ViQ8ISBoZvD64Lbzqj36/7aEYGor50ws33
	ZzcS97hFgevvtbMwp59NJVZkS8O/76zTGudcdkwAdOds6i9m7Qh2hOIbD8n8rWBLXOcejuRC291b1
	Brr+TmjTiBs5DzBU2LzBr9Cf+qbRErNOVScfi2TNnvlpYWMG0aS64IpD+PXroG4IXzzHf5L31ThVc
	a40m9ZmQ6tj4vrJeN3tcEAZ7wvHvrNlPmupzOOepAKbEEh0ruie+5bAHPReoawc+Leqk8zNKRwUV2
	hdfaYLtBDzpSGPzjT/uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGYf0-0000000CQ2Z-43pC;
	Tue, 13 Oct 2026 09:19:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGYey-0000000CQ1o-2H8v
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 09:19:01 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D46DJ6174136
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 09:19:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uQ82qhE+xbrPharhAgsD9+NR
	Ct+bFTtwURK4hSdKntQ=; b=m+3COEDlKoRKIgnoYo8+Ib/egwZwTuGWIqvL1820
	I2EeOkYgsfW2+9Ww2MmvcNxsU3HwoM7ARx9UyGQdxP+XtKGbZv1SksVPwiPIVfeK
	VSncdCH5da4DKRUneB088gg5LtLq4ddjw3Ibmcek6fERcag6jMxbwI5t9WXkvg9t
	qsz5z6AelYxBQs10BQdiQ11QcS9mhrWF5Wd/Zs35pADw8TOH60x+6/tx+FCl54B9
	PwIugTzhc/Kj53lLHxl4VRXIqnN6P3NUhO4y7he2H+PSj29+iVXOVrgypBcy/XmE
	duAXPHcP0lUXixC+f4ymtEWCMBM/WBRXOmpL5jdzwjznyg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h9daqs6t4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 09:18:59 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93ae8e7e546so575626985a.1
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 02:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791883139; x=1792487939; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=uQ82qhE+xbrPharhAgsD9+NRCt+bFTtwURK4hSdKntQ=;
        b=NX8EioKHdUN5gq6e9KrIodEjQa9nwpKuIgwnY59SdfVokWJRRwppXzBmLi+8RtxqZA
         XnYNlFC/JhobIqt2SHMXyf8SnIWjomLGG80+BdWRf83AciMuyUlOoR6ZojVBiGUuT5yQ
         FhAuTwOybTeLaEJYavdOyheb+iEkPfFBmCjL5cp0ERl/a9TUlEfaheorThdf06Y4MdsP
         OW6GrFCVGMhnZ3q9Xclg6r1Qwtn6zR6X/FEdTCl8a8X+hltC01KmzqJmE0+YCM7h0Hs1
         3ZmvBpFlqWWJTsXxYs18BevqXP0SqosNSAEQL3uiX9zTy/odRa+6vBSn8Ly+cgmkbBy+
         mquQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791883139; x=1792487939;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uQ82qhE+xbrPharhAgsD9+NRCt+bFTtwURK4hSdKntQ=;
        b=CmU5BomSMnx1H8o2Ywsdc1sZBoh+hvfZyBVhvWl+4cxAovDxkK4m2g1keo7YwSTpHN
         sUv4vj4kN1kuxoKn54UisBJtr9uCHv5P+QySHu0O1amdlqfX47QBTA3+ik8X0fC7em0G
         O6m9kBQsoF3b8CsZNpmf22pTwMbtnq52Yt2FGGko+vYU+VWjuiT/Yr9SisyVrTiwdsxa
         aZiK856hn0tjF0oC1HgriKR9+fefA+z/C8cs8+gDjulw7FZYzAEmubN+eCENhBfzdmS/
         ZPjBh4MjqrUTeblROL1Zj2JIYWnvfZno0UR+sC1N/s+zUJ0yQrE+vYmL5uTQK5g5LX7N
         Bw/A==
X-Forwarded-Encrypted: i=1; AKwUvBw20M+V63basZ2qP84L61/kht5N4UmPpG6X3MRusuPRTz9tTxQ81E5LgvEbCvaK7uTzkcYZHi3b0aE=@lists.infradead.org
X-Gm-Message-State: AFq9FYI7Rkv9y9+PHlLi+47QlR9xioMqUotOJ659dftvjfjwq1GRdnLf
	S6ewO+VqL2rtguPOkQ/41FYEiXMzz4kGc6PLEGoPIXnfnQtQezE3AE15u/suU77pP8j1CRNHwx4
	XH5CV0bvhcjruD5mP1+g+B5AH2rJ+ryjaevaOpODGjj9mb42lW5krCtVDzXGuv0mCTauq
X-Gm-Gg: AYBFou0GWJfVYojo/dy0hhMkVJ6pI1io35oY83UEokz9r6ffWaCk/wKGaxLJ1lEfujj
	J0dSOuklLjiQ1Dkfcah+0BkD0fu9IISR/yRBYmZ2ubzoChBDYj62ZMEOfbHYktGgwDrD4OhmZeu
	4anh4topLhFyufLe9umN1nGhJcBfZbNaq3DF76ybt4lPaOBmN3GsdiIYTuAwJY4m6ZSMQBnATV5
	wDs8Yvcw1ziK2VMITSwuN7tlMmAxKZDpJO5IYAbdvyAphVd014oktnsDZyGuzeFkjj7IgWzJa4Q
	0Fzwcgedr/U9s6iziNO7EMnb7GnhzIr6rJMrxiPVoHVmhqTmS3SME5QJVzKGW4SAq1tPNwp5wM7
	lJ5xO51LfejEbvnchRaDXqCBa+AEGwmQMxDMRvzIko+KxsDw92wLNU9UkPabznGv3g9QTqUKFQD
	yDgAwe4TB2N5RK
X-Received: by 2002:a05:620a:6601:b0:93e:7192:191c with SMTP id af79cd13be357-93ebd1e0044mr1950629985a.17.1791883138854;
        Tue, 13 Oct 2026 02:18:58 -0700 (PDT)
X-Received: by 2002:a05:620a:6601:b0:93e:7192:191c with SMTP id af79cd13be357-93ebd1e0044mr1950626285a.17.1791883138276;
        Tue, 13 Oct 2026 02:18:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5bcf8a3970asm1038505e87.79.2026.10.13.02.18.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 02:18:57 -0700 (PDT)
Date: Tue, 13 Oct 2026 12:18:55 +0300
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
Subject: Re: [PATCH v2 06/13] drm/msm/dp: Add support for DP controllers on
 Nord
Message-ID: <gmsyzeugteg67h5vwzf2y2e7k56eg6aicbonzjl72etgedd5oe@vlizd2npwtn6>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-6-a2ab9af954d2@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261012-nord-drv-dt-v2-6-a2ab9af954d2@oss.qualcomm.com>
X-Proofpoint-GUID: GjHCsNp8r-He9uRvScrubEXJiChST6PQ
X-Authority-Analysis: v=2.4 cv=FZuiV5+6 c=1 sm=1 tr=0 ts=6acdf783 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=rMXm0_BZOgqvqhzNPSsA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDAzNiBTYWx0ZWRfX05lFsCYFSBaR
 fR3ud3cc9EZKJU2/yqTLRdZUrpI8Law0EnLXwpiKX9g3IyMhyycsT2YmKk3GB1d/j8352dUrEh/
 HD5hnKBkfqlVlCMeTS/+CPonbBq6ZPI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDAzNiBTYWx0ZWRfXyXtkyuHRfYCi
 rOGDft4UNf8Me9+QiwsjlkH0p4oRsOhZC3QPAA6drU9I1hOGcZTIvkoBOekr+D/3MA9wF3OzwGv
 u4P/X7MH/IwHledwmUhUI9tNhsReL2OpB7beYI67IqaEWCs78VK2rA0Dr6HAn/smvPe4OEEjr5/
 qu0c1vL5vRL1PspHW2a1QW8eKKf811F8tK5JiFoE9lYDpuH+Dbqv7Hls7TXqdySBp109e94s17L
 /zUA2jJyMP7kLG9u5ZH4vqZ1VNXq7Zc95T8tA295dOQZvOa8o80zwxkEDHiBg7Hxa7kwDfFOGIj
 3qT42Jouv8egxhtx/SCjaxHrJThfbTjzX7w9vHjSCU7MM1xt/1OCS+wtQ+UlNt08E7KOGRWUwNu
 LXK3TPd547mxu0/HyH3PFcctVC1rXOGPTcHw2m+Q0CMds1sHg48WkNZjf86J6BVsndzjHFjwDhR
 MWFgnhMobdm/gwc3sRA==
X-Proofpoint-ORIG-GUID: GjHCsNp8r-He9uRvScrubEXJiChST6PQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 impostorscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610130036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_021900_591816_49CB2C3E 
X-CRM114-Status: GOOD (  14.03  )
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

On Mon, Oct 12, 2026 at 07:02:16PM +0530, Nabige Aala wrote:
> From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> 
> Add the Nord DP desc and compatible. Nord is supporting the
> four DP cotnrollers, two per MDSS instance.
> 
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

Why are they not a part of the existing entries? Is it a newer core?

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
