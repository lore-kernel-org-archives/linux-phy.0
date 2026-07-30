Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 988F8C54FD2
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 09:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnvG30AVPc6tvijG+v3nQfpYuKbXos8vnGYQdGK9rQM=; b=WFPTgSVs9XOFcb
	utTms1FnvaGMWVZt1BjSrtuQU3llikwZP0Wy6+GPj4xeZcgBAdEJxsFArEoV9CXOLeX2r2uhKKb4X
	948dn4TKctGK1SKZyD0tdmNqC4cNCsoj9EuJqmFii3aYL1wJenn8FlrFchAjP3jvUXS4LNdoMOMSb
	OVHXImBP4eb2XbVrkaMcBevCQN+6Bm7RgNrNuJeLZb4NESsRV+ykcOdrQgBhOrE+30eF8gLrCcFxM
	YVMB5MKezuq4ADczVdCc8bSauGk5Kq/4ANbP6/BYODwAinDRPhPkM4nv1esN0LNrhntAqtf4sZtu1
	GU+JlxHjnf+kJa26e0+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpN1c-00000009zxb-1IzJ;
	Thu, 30 Jul 2026 09:26:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpN1a-00000009zvy-0MDR
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 09:25:59 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66U9FlF54082076
	for <linux-phy@lists.infradead.org>; Thu, 30 Jul 2026 09:25:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CpwG7cUwCiBQiNOvTzmfNMlN8+MeLdJPK4zcBEkWFB4=; b=djH7gx4ile1RlJg4
	SoMWfm+PZI8SQ7T6KhXEmU5zRY/TWjmp5u8wMDGtp9mnYPuWd+TAcjdqiF9UmrlE
	E3B6m0XJNsGaXTRS+o9ANbm7PBAXCoERL14DOzk/GfCwYzleJwRRh9RVOlQipfUZ
	L7cXtrTDaJSsyrM/QWoSn1DJJWPm6GjD51trDw9kmx77fv0CkNTwPAe+7Tj3OkgT
	C6hpb9/+Te204tTpVCa6cSkIf0v5uu8gVH0a7H9m1FE+MCjseV90VLrhgYiQUD87
	XVSMWe0hZe+rJXa11yLw0m2QkAEF0NMsQUHhSK6heJZPWuVz5j266zc/xMecN6d+
	YqnarA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fr3tyg1de-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 30 Jul 2026 09:25:56 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51ca37ce4c3so4248551cf.3
        for <linux-phy@lists.infradead.org>; Thu, 30 Jul 2026 02:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785403556; x=1786008356; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CpwG7cUwCiBQiNOvTzmfNMlN8+MeLdJPK4zcBEkWFB4=;
        b=JJHTwe/Pn8/8F0ZdYzmHZEyGZbsIXsdJFmA5BjwcMj/optqswAMM47+XW+AGuG+4QX
         CGV4E4p8IYFm003TvZY/icGI9mxoZLbWiZJXONUGHSievmRiChne1P86x/YHHNXCbf2l
         M001KXQEoz+EU97N0kGAA124eJrTUdyrXAVEn+nmuDc9HJf1FOfZCOo0dSw+1B9EqWLl
         Ym7KtSBdL5gHIOamF6MmaDYkhOl+0tPh7YCXz7UaFyvQFpP54XBfPPB+wPPdg2xWvnr9
         LdmJuTCTm4wHmUuMFOhfYZ2cKYEsC9TGJWfW6SnhbLY75pE4R1UN9dXPexVA6YSM4jPx
         16vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785403556; x=1786008356;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CpwG7cUwCiBQiNOvTzmfNMlN8+MeLdJPK4zcBEkWFB4=;
        b=eaJwft9Bcq+zz/aZcC/6kov5pAnHyL1PPxJ6APu7RmE4Q/q8BSxLE2gn+hYKQX40d0
         DoxnziDMwFk6NF4TOY/gX89Z7XgJVzIwaRoqFoUecZtBXHf+N+VoZkZLZwFqEoeBHvZb
         PFHZuCnxKOYgje1ncE0p9D1N0NjLRF+Lzz0Kx5QP588N01c8Rh4sQzn8HvuN9FvpglL2
         B83Nns9T/vVqHayNPEwg7qnL15KYDfvQIhWCgxlLCGygHIc1th90P0hzLRRxueqaU1iC
         PZ6z1UcBVuqsrhxLCDsfkVaxzYCg3Rv6t1Zkg4O1Qbr2tYfyDup20Lh5QnxwGNAb/MQO
         eFKw==
X-Forwarded-Encrypted: i=1; AHgh+RpjSg4Lk/fjGqVU0lga5xZcEc19Yr61TNxRGIWIe4jo+yB5apugBd+0qL8FwkyNX++IbJziNXzsZW8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1WW6de2jvvD1td57b1Xn3qgNtxgYXSOM7HfiqtManjmB8BvJh
	k6i+p0Bu0TJVR5g+IHpdw/QyxAxC7IAhJfg4soavGbr0jFNdZpKUrxBupyqGiKm+bo9yhgXIkEe
	JX8d8HfQZs3HR8j1Ct+MJN2dY/Gk2a2pvLu00340OFZG3jnVrsQBbrh028Phi5kjFiObl
X-Gm-Gg: AR+sD125QKC8Ea+T7G4MNCNMcr7OZd8piWCYHgCItqzj7E9on/vonIzMSHwV8IENY9K
	yMk98B0i3fEWadPIt/8gxd04JZFNC2PJeZNFH05LdBU78zSUhtddfKb23ur660ljx/nl7C4VibR
	8BJdtq70k85SZA7wncHYAObeDHs6qK1b4tZGrzYkN7OOunuskwIBTMD9R3BrN8Ypzu26AFcCD0d
	HizC+GSiiWegCNl6IpnD9wkVnIElngBBE3XBOw6I8YqDX6vP1tp5C+MtVEYY/i3fuvmxZP/6a7M
	GPXOOK/L4/XnUz2cle15GgW8jWURlg9SeI0Su8R4xsiVsRPWo4oJIBtZALyVEBVeCAEGTbwITnc
	TQNvCsbh2SkSVHlF6ioAtn1ze
X-Received: by 2002:a05:622a:4d8a:b0:51b:f40b:2faf with SMTP id d75a77b69052e-52b386e56d9mr33502251cf.4.1785403555722;
        Thu, 30 Jul 2026 02:25:55 -0700 (PDT)
X-Received: by 2002:a05:622a:4d8a:b0:51b:f40b:2faf with SMTP id d75a77b69052e-52b386e56d9mr33501871cf.4.1785403555230;
        Thu, 30 Jul 2026 02:25:55 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1fa8bb46f0sm46325366b.44.2026.07.30.02.25.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2026 02:25:54 -0700 (PDT)
Message-ID: <f122889b-1278-43b0-966b-562b5388e587@oss.qualcomm.com>
Date: Thu, 30 Jul 2026 11:25:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/6] arm64: dts: qcom: glymur-crd: Add PHY supplies for
 pcie3_phy
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
 <20260724-glymur_linkmode_0724-v7-4-65c8469c6b65@oss.qualcomm.com>
 <74907d0a-cf14-43b6-bcfb-8c283926a820@oss.qualcomm.com>
 <ammhm1mnHhn2okgJ@hu-qianyu-lv.qualcomm.com>
 <2091d5bf-8c76-479b-98fd-fc75b3adf644@oss.qualcomm.com>
 <amnDqhTpMffP9M1w@hu-qianyu-lv.qualcomm.com>
 <cc185dfa-4271-4c63-89a9-05b8990db242@oss.qualcomm.com>
 <amnM/dVT3tZeR4h7@hu-qianyu-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <amnM/dVT3tZeR4h7@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-GUID: j6E0_0jb1-1d4MgOmeH1fSpGlwVh4D0N
X-Authority-Analysis: v=2.4 cv=JZOMa0KV c=1 sm=1 tr=0 ts=6a6b18a4 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=yc642J7MXfvTOP0XSmYA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMwMDA2OSBTYWx0ZWRfX+aOA8mBS4wJN
 2uT/TryiGvEx2GDsYAnTefnhFg40rlC5ZQ+rnkHUBbRW4KbD54omscG9vugtXfJphzgV0kFOrbP
 944UU2a2r7vuqYSEk5W+1u3cT2pDa+23Jmurd1825IXvbHM/5qzuUtO+peqIfnBAimQY+Wir5M4
 JtcPMqg5PWqETPpoeIUvDHM4OssBb/cHk94VS0mJSuFkYhO820Y4W+6vpuWTIa/wHnbyU2MgUdt
 GuRJ9VvJ6F4sKPoEvUqTxdM7ctO6NWf1QOcF5IvnkDDVrDttasq07cgkMTjOTyKClUr2+nLBM2x
 RYmleji4qSR/1KnEP80jfS5TTojmxAY/Asd9TZy33jG1sJB71ecY3IipSzi2r7myxvFj4CT9wdu
 3bNNuVeDjTDaPEcJ7hR1tGYsrIpsSw3gXp5SDQvFLZSa3wqbNdZeAyj2rNtjpHwZ8mz1UIt3GgZ
 DqZwjXeNxsLAqfMzmnQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMwMDA2OSBTYWx0ZWRfX2bPd8PxlLy0j
 wqrHiagsLV+ZhAJQ9ERbhlcGIxEx2S88EWK6RV5A3WoaieFgOBw7i7u2yhD2PxIm/cQpIuXoMuU
 YYCx2BQ8GUh4hpMWm9qn5HtVfc7opXs=
X-Proofpoint-ORIG-GUID: j6E0_0jb1-1d4MgOmeH1fSpGlwVh4D0N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-30_02,2026-07-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0
 phishscore=0 clxscore=1015 malwarescore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607300069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_022558_131373_735C9164 
X-CRM114-Status: GOOD (  12.83  )
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

On 7/29/26 11:50 AM, Qiang Yu wrote:
> On Wed, Jul 29, 2026 at 11:22:45AM +0200, Konrad Dybcio wrote:
>> On 7/29/26 11:11 AM, Qiang Yu wrote:
>>> On Wed, Jul 29, 2026 at 10:30:27AM +0200, Konrad Dybcio wrote:
>>>> On 7/29/26 8:45 AM, Qiang Yu wrote:
>>>>> On Mon, Jul 27, 2026 at 04:47:15PM +0200, Konrad Dybcio wrote:
>>>>>> On 7/24/26 12:01 PM, Qiang Yu wrote:
>>>>>>> CRD wires the shared Gen5x8 PCIe PHY's regulator supplies through
>>>>>>> board-specific PMIC rails. Add the vdda-phy, vdda-pll, and
>>>>>>> vdda-refgen0p9/1p2 supplies for &pcie3_phy.
>>>>>>>
>>>>>>> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
>>>>>>> ---

[...]

>> Do we know what happens if UEFI sets this to x8-mode? (is that even
> 
> UEFI will not set it two x8 mode on crd.
> 
>> a concern on CRDs specifically though?) Will the second controller fail
>> to probe and become a sync_state hog?
> 
> PCIe3b is not enabled in UEFI by default, if we enable it here, we will
> see probe fail.

OK, I'm happy with the patch as-is then

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
