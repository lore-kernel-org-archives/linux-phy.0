Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88AC0606A33E
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 15:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TRhPEss7;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=JVHA+WmS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=dqKF4fZG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OcYacvcOGRwf2SsAec1FlQFBl4SJI2ypemlF1lbGvYI=; b=TRhPEss7H+2DtY5PQxORdti9fD
	6xE+YVGFlOv6mrQjVAXiJjSiHRQRtuCeB235hxiLrcOYsiqz4hwN59MiQIWxZchMMQe7TPdaJVQL/
	ifGaVp9rADAhC0qI5NKLVLl8Ol2jT7S/RNSzOYJe/X260EKWQzlpCfWw1dNBcW1gGk4/J+vwL8Tno
	WWDn2tGxn63ALx49njeSvPH6+ethzPhWri2QcopqejCMps6+kwM3qyBHkbj7MNttIfznkGhtq6Llc
	8kRM/Qaqc6v1c7mOEPxcait1isvvnzhaEceh/9M0xKmNlwMfmZz0fD0r+o21rcUoOLVFq4vqJl5dY
	f9P/RlxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQR2i-000000011LJ-0a24;
	Mon, 09 Nov 2026 15:12:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQR2c-000000011Kb-21i7
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 15:12:18 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A9DExe73460755
	for <linux-phy@lists.infradead.org>; Mon, 9 Nov 2026 15:12:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PUsDu0OkTgaKjQcZBPcirXMHnRarKrGJneMxp5gNekI=; b=JVHA+WmS28WTu51A
	alo4QMvr0WoiXI1XjKsBEXyVuK1q94o60sR1tEhkiY2tviOamIxSXbW2e4SvWI0B
	FTkucu81+2EXGVGJ5suaNaLkGLtqVzxKWtq5ruWvOOwNBDZI8/88FOsPRUA5JBHv
	JACpPjvZIITH3FJcqZnm9Bm/J0R+cyiE6IYGLJFK8oO7l309Hp1OjCX0HhYMm7Po
	btMjZ1ALCHvtYmQq86wiBt9nEtv5ydZzL5OQA1dARTOb2/BpGIxuc2TxWsSA0U8s
	SRIa4+tiSHSiIPRLKDBLsxrgw25FmtzCpVrDJlCpin4RqaRpkTqQZu+KTy5h/1ec
	MSZ0kw==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hue0rrmx6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 15:12:13 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-7cc0ae52207so18553137.2
        for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 07:12:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794237133; x=1794841933; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PUsDu0OkTgaKjQcZBPcirXMHnRarKrGJneMxp5gNekI=;
        b=dqKF4fZG2Df18McnYvKzYxzP2aZxHtgYbff/kFQg1wqAdTbUKsaHwfSHM0dmyrFMJE
         6mHUQ7Ko8MmAYEVArGXLp8X773JbXfgJhT9J0yTkaMHQynVvhOHVTEhjr7fnz7VQrcCV
         OF6gHaZdbAPUy6poKK23Ly4298KGmzFEhcSRxXcFs65EtkQqDMhsQ4ZNZw317bkRfYoa
         PYSsqju4TKWfGaJHQwzYc5/JaCzPRDKymvLowfzuMOXxOYaF0XhATAKzbjnh8owKmA69
         FTx/FHciPUGdP7zk7Pzh4/1oN3A7FvYdLWG814FrRnwAco50aVkv7nIew1kcHB6kmQYv
         cXWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794237133; x=1794841933;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=PUsDu0OkTgaKjQcZBPcirXMHnRarKrGJneMxp5gNekI=;
        b=QzP2NZQfotTBwv/LyFeRYEB9zBsHZkLGESO+Qp5nYGziKdKC2huTPa3NjkQjVc5jq4
         FbZNs+JZtfTh3u9uTyPM+J9HqgLVlxZPDYzMLvx2wbXrdawhFwp1EwX7TVhZ3npPeuhp
         +DbPpGEu/Xc4tIGsaOpjGwSEzg3asb8qVcCdldIC/C+jkyASb7jykUHNPvEoAs9WASzp
         YlhHIYuJtPVAxOzo5o1F/WLaujYQRVdTa21JcWmqGOY8Ixx5pO1TBCJKD2DjJtNaSAzq
         hJMlFtx+kuQ84mk25H1bRgpvtxawD1xioQW8qQJ/LcJkZULySUwlwiYTyAIG8uYDzyn6
         TySA==
X-Forwarded-Encrypted: i=1; AL+hErGdm0I5frLs95sQdl1m9DlVvK5YtQ+NCWkCYRnQXhNXrm4u5b7y1SLUv0qzYbIRSAbKwjqNrEDlDM8=@lists.infradead.org
X-Gm-Message-State: APuU4Z+W8Nl5xaF/S9e8ybZaiRY3h20XoKV5u2CqahXFr73J74wmlNUc
	YI74fo+XOy1SOAhUh+iZbJge22/IgZUAtYdU93fMmdLimBEM4AX17W3eWSdoMBjuUM1W5VsjCpN
	MdDOf4dzpkmqHXx0LESbW23UHglbzw18MWkkfkaIMXJ1QiaAQkurQOZ6W6vXFzbPzNG9V
X-Gm-Gg: AYBFou3xj8TFHniuB17M5AGckuzg5SDwOpUux9yBHriKWL7ozkW4OahIlpu0qucsuT4
	M9+xCO3fOxAt2kneVrxjF7XViZCLoZrCB+SuItog1sLgtJdIpJO57D7Pj4kfpVNq67gJmx/CpKm
	u6VqGsJ5YXYLUyXBQiHKwfoIY091hUmKz51jouFnk5/mf+eeTNSf/zNRGI+4phcX819g0mVWU1f
	hcB7/R6t3X2642VfaLKvn3PCKnETSoWbmCVuYddSW66+td/LvGnUOclRBi5NvXtcOtbVR6ZeBeN
	zSNPKnpLSd15cpQZExpXdpqlZAGBOgPWd++xDR6gy8jO2t/6F2K77488127L10Iuju73roi9lfv
	JnD7yl4IDvGuRH4+HkGX6QTdtqoOBruh+a4KPMnohcPaIVSGp0N0zqysQFJcwMMOGDNUNKw==
X-Received: by 2002:a05:6102:301a:b0:7cc:1137:9d98 with SMTP id ada2fe7eead31-7d2da6343d3mr1229144137.0.1794237132553;
        Mon, 09 Nov 2026 07:12:12 -0800 (PST)
X-Received: by 2002:a05:6102:301a:b0:7cc:1137:9d98 with SMTP id ada2fe7eead31-7d2da6343d3mr1229073137.0.1794237131982;
        Mon, 09 Nov 2026 07:12:11 -0800 (PST)
Received: from [192.168.226.72] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b721ed95desm1765456a12.26.2026.11.09.07.12.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2026 07:12:11 -0800 (PST)
Message-ID: <3ddaacfd-59c0-4d87-9b8c-2caa85143393@oss.qualcomm.com>
Date: Mon, 9 Nov 2026 16:12:05 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 17/17] arm64: dts: qcom: Add Samsung Galaxy XR
To: Stanislav Aleksandrov <lightofmysoul@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Thomas Gleixner <tglx@kernel.org>, Radu Rendec <radu@rendec.net>,
        Lee Jones <lee@kernel.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Bart Van Assche <bvanassche@acm.org>, Bean Huo <beanhuo@micron.com>,
        Stanley Jhu <stanleyjhu@google.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Georgi Djakov <djakov@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mfd@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20261109-halliday-dts-v1-0-289114ab8197@gmail.com>
 <20261109-halliday-dts-v1-17-289114ab8197@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261109-halliday-dts-v1-17-289114ab8197@gmail.com>
X-Proofpoint-GUID: aZvR67o-G0VUuaE4Ql5UZ6BWdr-etzIF
X-Authority-Analysis: v=2.4 cv=MpfHeGae c=1 sm=1 tr=0 ts=6af1e2cd cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=pGLkceISAAAA:8 a=Xzw-RmQiYhs1fFvV6_MA:9 a=QEXdDO2ut3YA:10
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA5MDA2MCBTYWx0ZWRfXyT3UR38n9Deh
 T+9hc5xP+WRKpZrB/DAO4rfGzQnXAu3LgD0abAUt0u/9XpriXtXZw+PNTQn8ghMA7+jZ03nzRZ6
 l2md8/nkpVt7EXD19/rjZhnb/qFJDEiNZXUzN3jIotCDLCIeNAhP8TYpbPJY59V+ew6qro+kWsN
 hV2TFUrNTRxL7LIff/hxYsYVdxaDpyuVqjtQZiO0y1QrdnVMV5xFWxVM22XbniL0Oc3Dt3GyReW
 6mqASm7v12rESCq7pRy76C9NPQq+WkqHqfOv4+mCzY6H+m+DTNYCQQ1jS8PeKUO4Q3I8pHskTZn
 b45xCOSBY2Yli9w2C7s4QoXHZv1i+/uedghI99Hhri3hDm6Twk43+wJ0Klm0fUKeZwF1kwW4Aog
 D9AQboYHGCZbbLrp/4s+yLj0uN+IEN+dkp9RyJM409r0g91LKvpE4K6RVn5uB5X21h7PzpJBg55
 INgbPPE2ddm55WC+t5g==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA5MDA2MCBTYWx0ZWRfXxmOoltF7LMBU
 FcHwdnoDhWkqtgNkBdTLd4RAcEi1zeakXOMQ7w0kuNbkOXAJ1ZukEh/IBGYmQAr+T7riDpUDP6P
 zHCHFkKDRC/9rsYy9aOTn6vaJUn88xM=
X-Proofpoint-ORIG-GUID: aZvR67o-G0VUuaE4Ql5UZ6BWdr-etzIF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-09_05,2026-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 priorityscore=1501 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611090060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_071215_484304_0EF00837 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/9/26 1:33 AM, Stanislav Aleksandrov wrote:
> Add the device tree for the Samsung Galaxy XR headset, which is based on
> the Qualcomm Halliday SoC (SXR2250P).
> 
> Supported so far: the PMICs and their regulators, the power and volume
> down keys, USB in high-speed peripheral mode and UFS storage.
> 
> Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
> ---

[...]


> +&usb_1 {
> +	dr_mode = "peripheral";
> +	maximum-speed = "high-speed";
> +	qcom,select-utmi-as-pipe-clk;

Is there no superspeed / dp altmode in hardware?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
