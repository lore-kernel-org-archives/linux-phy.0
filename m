Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EB15C61DD3
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 07:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZzQvQjjY3eGp1Cn5IslLavL5gRRN7rZHbx7aFYaOTVg=; b=Tabah/bELekBoh
	VGUozcViBLL5UhrRZFhAdQWac5FzLrAs01UedJVRAHZ478wPyCaTjcLvkVmaf9GD1eR5EykanIW6N
	/q5uogXTNhzu2SPuzqzZSq9W1gGeAHotYnkmBFHuwu13yl+3uxwuBXYs2GMKOScumT+0bVKKzjeuP
	jtbqAU88+/bL8LOBG6ENNWGcbCQcHbAoZNZWHMsbO1LUiosDGSyRV59OFUl5Y5zFEnB73i+NwTKkQ
	HA5VpmOv9m5clfXlKSs0oYGEokum7c7kXOyTxdbke44b8Ynk2kNmOkxRJC9jt318fnVGEMLBJjy+Q
	44VJacFFce9Zw0ojrjzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22HW-0000000GhuB-1AG0;
	Thu, 03 Sep 2026 07:54:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22HU-0000000GhtR-1lzt
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 07:54:45 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6835ldZQ3176900
	for <linux-phy@lists.infradead.org>; Thu, 3 Sep 2026 07:54:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c2fcDfowcmb0Fy77GnQQJjE8UHWSmrNgm2oaE6E2N+Y=; b=RAskscrQsCQcVvY4
	dm9EQJRTocP2QJ1QuFuAVLvf35m2BJoNnRJJ4ntBNCxWxMMrfbJ2pLxeZnKO1pk3
	v8BIH8PoUh6QyAnHlusBCCSRxQhNoSoSkdtxcRSv+Q+uQf2ZmRRhqms15LYn19eO
	B8lH+jpaAnXSEjsy1EO2aSI1MJ1x0YdzMC/n70OFjiEj+Yi+PVNZilQU+PhA/9UZ
	EkKxXIfsqtVZTLTbrpMa+FgzgElM05Q7S17GBKMapUPm79fZ3uMhh6QQ+eT3B3Sr
	H9b3LHmj1nZT37fADALhLB2Gx6QgfNIDtGkZaIVIXYUtsYLdg3xlQW5Y9V0BlUfX
	0O3zlQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gemj4v5n8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 07:54:43 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-92e5e21552dso27783185a.0
        for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 00:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788422083; x=1789026883; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=c2fcDfowcmb0Fy77GnQQJjE8UHWSmrNgm2oaE6E2N+Y=;
        b=flkKpFO/PhUFMA4g0hVKTD+gYCXwb2SvuZDzlzgs9qBKbNh5eelfwE8dW7tKFowZn7
         xVsiAuNKSMlUAzWuCPdhepwdMnrNU+DhrCLtmE+A7xbqX5o9dW6+sxGHwiWqR3hJ4kLN
         3pErgWxk8tdiAgLOhny0zFZS6BIzZA7UXIs/z7/1eKLzT0ZUWJa0WZnE/GicGRIlG0nn
         Yq1pPRWkjjFvucXeI/0bzw027gHV50vZEqsZLxta5meoe/TuTbumZ7ocQt7WGw+5weA2
         dPnEH3MBySkTwoNggZrlIzxVIjiXU1ffUsUUOLCEERmSjnqXI9Hze7WEkKh8xWfhpaXf
         Wz5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788422083; x=1789026883;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=c2fcDfowcmb0Fy77GnQQJjE8UHWSmrNgm2oaE6E2N+Y=;
        b=p6nCvtoWWXNpBZrEriwkzsqlo7wcTl1owP6hg4Z3EgXP/QBl6h6HFPQ04Do+K9P9YZ
         reArunHw2h/YKzNEuFAXXKmtVLo2XKvHkm2Yzh7JIzrDCJ4ZJ9J6JrMnIHymz2IViJiV
         LWeqSPXYvm2D1mGvAN4QdcdTFFkbY8KTyvMOujcCZ3npDDFzUzpMR/vrhY0tnhR+MJMD
         5lJxK4oo1NN/z1+YNQQeeCyo7ZvlX5hTqWU6z1HrMgWBsyzCHdg5far5oGxL8LPrsZnW
         8EhzqMxS9EQyoG5OMGRGUSFWzp8tPrKTWr3r0cY7BXj/M5y3dFFk+ppmfQ0xgk7axn8Y
         7VxQ==
X-Forwarded-Encrypted: i=1; AKwUvByIEyzEkYx7spf3HCmzuOw24uleCA6XVB5b8lVHiCeaPoPUHd5J+96rw8IBNdLc4DqWY8s/smrzW74=@lists.infradead.org
X-Gm-Message-State: AFuF++kiyR8ff4k4qT5FFe80ASOguC+/BefFMT3caxe0JB60OOxn7uw4
	+U9Ld5x7bGyiua6YoinAICqq675+Fm5/HJf//HlTvP0XDTkKPgskFo7z4E2T00BZYWkyd/Uv304
	v8OT4+oz5NnfCYotLf3D1Q9i6HKPrKIYtc+DUl0u66UsgqVpSElRDPqSE+j4ETpdSVWnL
X-Gm-Gg: AYBFou3EjyllU+smjgn5s7CcrGmq0b+y3bDAzrcf0G9I+VkoSwrcfNU0EQDfXICXkv9
	EzvASSBwiDu2mMNkEX98VLrarqYX+4wge3fypC70QEV2z47OPsxyViueekm2wr6S9yDEFsyTlj/
	8M/e6O1BH18+AqtqhnvkJPleuIfpLiHPqXT+GsHX3j2mFrOU0cBH4v4lsjAXZ1H2bk+V0OkxUJI
	XTvAwdJhg0q2Y1fHuDBCtP9kZNsFzjqp4vYaa/G8EQnIWgEmXH3iKK3xrGis07PrOR3tuu/Xd1d
	7XNEXd7c5ZbAabcgZBow39qfNORMTfyQ3as4k+QHHfYpJJvBgmCB3Sz0qK3xAvdmZ/Oy+zKpDHZ
	WNIXBv1e0Ar5lHGzJJeIL8g==
X-Received: by 2002:a05:620a:2704:b0:939:288a:8a0c with SMTP id af79cd13be357-939610b5598mr723268485a.6.1788422082765;
        Thu, 03 Sep 2026 00:54:42 -0700 (PDT)
X-Received: by 2002:a05:620a:2704:b0:939:288a:8a0c with SMTP id af79cd13be357-939610b5598mr723257285a.6.1788422080144;
        Thu, 03 Sep 2026 00:54:40 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c25f41733b2sm60942866b.17.2026.09.03.00.54.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2026 00:54:39 -0700 (PDT)
Message-ID: <fe6dfaf1-521b-4818-890c-1bb1c413ee44@oss.qualcomm.com>
Date: Thu, 3 Sep 2026 09:54:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 00/12] Enable USB3 for Qualcomm IPQ5018
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <praveenkumar.i@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAzMDA2OSBTYWx0ZWRfXzv+NTrIMYtCd
 WXGqozo1mQ35nPxVusdpfB2yw4Bn0wtYBJVs0cc6k1IV+yK2w2KZQLKtoBfyrICtldWdGzp1rMd
 BER2ejRU21JkzyMXv4Y/xUB2X6PxQErhc7KCJOdIqIimuAINUNhD/vzUVMaEcVJMHuFyg9GCw2Y
 UZBx6jYhiiKeeQmfd/TwfFeZMJ5X64p4lfnYcIv6BxhIOLlfFdm/Cz35PU68KUu9FV//f0C2vD1
 L9GEvBGI1PIbiI90zFUhyQ71il4VxlKUo2TcC3DdW/yBs4baaR/mgulVGLMMKmnT5387AVMr9Ys
 Lcyp8kQ2PvDzsAoqYix6RSBMxQDGiR1sazCAPnqLCPNSVAHzGrkuv3IDXmeRFUN2wufWKZSndgk
 5RLj5vgSz7huicU4eyAMYU3RJLQtirSNDKnE+JHqtUpGsSalLvyYTWVMUCcAyOqMNPpmIUU66tA
 kiH6wh86o53ICxhzanA==
X-Proofpoint-ORIG-GUID: BCAnBgdG5EcziGKAGkBo8nOWwO0Fpt6a
X-Authority-Analysis: v=2.4 cv=MdhcfZ/f c=1 sm=1 tr=0 ts=6a9927c3 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=cwIZyh-EchK-Zb-g6cYA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: BCAnBgdG5EcziGKAGkBo8nOWwO0Fpt6a
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAzMDA2OSBTYWx0ZWRfX2PSxyxbznHdS
 pQv+BPv3Y7o1m0oTcUlP/e0PgowTIbL/mPFF5Npl/mpXxuVeg0G4SP/F+n8Wlj4jja3eIER2phq
 GIlX4pPCAmMs/DtaaSM8Qq+ZUN77sdk=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-03_02,2026-09-02_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 adultscore=0 suspectscore=0 malwarescore=0
 phishscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609030069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_005444_580593_5F2E22BE 
X-CRM114-Status: GOOD (  12.69  )
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

On 8/25/26 2:37 PM, George Moussalem via B4 Relay wrote:
> Patch series adds Qualcomm 22ull Super-Speed USB UNIPHY driver support
> present in Qualcomm IPQ5018 and IPQ5332 SoC which is required to enable
> USB3. This PHY is interfaced with SNPS DWC3 USB and SNPS DWC PCIe.
> Either one of the interface can use it via the mux selection present in
> the TCSR register. Current patch series adds the support for UNIPHY with
> DWC3 USB.

I tried to get to the bottom of it:

0x5d_000 -> usb3+pcie (muxable?)
0x7e_000 -> usb3+pcie (not muxable?) / for PCIe1
0x86_000 -> pciex2 / for PCIe0

_however_ there are only 2 PCIe hosts and 1 USB host.. 

Unfortunately the router SoC docs are very limited for me.. maybe
+Kathiravan can help.. 

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
