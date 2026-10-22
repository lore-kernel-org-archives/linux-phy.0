Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D3A606A328
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 02:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qWi5EY1I;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=CNJXcpTA;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=MLobQzvL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvwArKske+WUvKPqXZ3R9mnsDpTNr8Tbk+udY6R5dBs=; b=qWi5EY1IxECZ9w
	vsXfrezg1Nao8mhQdZUivTy13OC/GSeNzPpwYFTz3xKP/U2M+3TYBryRTC6bVNY3PFkmt6zPlbJ94
	sN7P0SBo+VDml/ZhDpU/xbBvg/IvS0JLJVfXW7xsoK3zVuo12t7zXWP+becuSf5mBY/OgsXTWGJOK
	m7obY5LXixdnVbS1z9E2Ixbz9pt37l+C/Frxt3E0N3ALwuimg4wg2oSUE1bojgyEpr+/T9EpF0j0Z
	6ds4pWEhJ+nGKGBa2l17vCK3jfjLNKqxSsdBJ5PSEuM6CrT6a+7WGatUGDLsfyoyS2xgI1dOtyCK+
	DXxrXRAnkJutNX2geQhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJiuL-0000000DEfy-2AOM;
	Thu, 22 Oct 2026 02:51:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJiuJ-0000000DEfN-0lVC
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 02:51:56 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69M1iq0W2382254
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 02:51:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RYH59DRywd2tcO8Con8trQ/dK8KHQ//hYqQ0KcwUeG4=; b=CNJXcpTA2NqGIjg8
	DsF6XL5RmacyN91f/g5iMEcJjRP9UzMQz1s1gxJpNOt7Ncx6gpgj1tbHST2S3d9n
	4tMii8WolkF8tV/Px5C5S2L21+gk8PSVvSuEEks9VruAKFb9hYsR2cJh8VpNvfUF
	emFOiFpiSV7dFtoaPs++kEL2gi6ozsS6F7fF+svNdIa7g4x/PZfB5d0UrtGEWtH1
	hNECfQS7QN+NFVxtR201pKjF2Dk6VaK06GrmIdyR+tkjY35OGFc2Za23BZhchuvG
	3Vr+Pcy+h/7C+eF92362gAsIV7wMh2WbXd1NkA3NWs7Av+JvEykTqghNc6f2QF1Z
	2R4ZEA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hf93a0cne-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 02:51:54 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2e9501034c4so21576085ad.0
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 19:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792637514; x=1793242314; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RYH59DRywd2tcO8Con8trQ/dK8KHQ//hYqQ0KcwUeG4=;
        b=MLobQzvLnwy30lCw/pKgNEPTB4bhs1mvw2WqQg/w6p/IjkQdXoOmMSlUOSHVtYkWmg
         M3YlUX6VM0sR6oAe6+zjInk0Qe180O38P7PfYQkoDvGXGe6F5w3sMIlVAlV10MaDPOID
         43oqR4lzSWt/XCKLetEqiArbB4jXekeDgXsPtVNZNNki2v4/h2jsvyWEeSbTghddSlLv
         bt3qmHLPW61lG3TpqMWnQG4RyC3ETKZjYICLfkxWJgKGShRR0p0vFiT3tn4uEJiS4Tt7
         /Hq2/7tA/6eR/WXxGfislx5vCoix99PW7qCH/Qlmrp9BA4qUO9PqkQYcBq0QzmYd8cbx
         IOwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792637514; x=1793242314;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RYH59DRywd2tcO8Con8trQ/dK8KHQ//hYqQ0KcwUeG4=;
        b=IQoi5ExV0r11ND5HN9BFSvZuXJEWCm+hMsqdPkkKHT3DmO6tsEeMm+HbYFb46UgYHD
         qFQX9TnhYbu0kpWubCNwslGerHLuzkEtiTCh1CNQSzhKomhsSXSE5Q2MBsKcz8jsLSw3
         qWLBq25aAKBbtpk35XU7YrPyyn5Fz+8UkjOv84Ch/qiMXljYBBRWnfTCgNTEa2yXGKjg
         zoDfTfI/9AutWXxMgcFoZZRRPOvrodYApee9PP0Md7XJhFjhlty7AgpQZ1ACSFW1sOWl
         L910zeCEqjKrHiEXMdEoLNPBXmGr4DbsmML2t1+ueaW6ZzDpxkTMUWZu9HnDrXGKys79
         P8ow==
X-Gm-Message-State: AFq9FYJGNtq+up1TUnIqz2iXTecI98e4NnyVA+DwH7w6ImGYzML99Pb+
	5bZ4fZgCCSZuiEKZd5whpWWzt2rb6AdndSZbLIyjiVtDtYsukwgUYK3FXRodIIPVygts/4oVJh4
	nSEbbtE6IDygEunACgptGoJJOOxPzL/LNxZD0p3P7k4dze1PUCqbpphY2lw6ha6w1hedl
X-Gm-Gg: AYBFou3MIwiAEWAVQP9cjV2bY0m98eKUr9M/pIdsOuox+0Fn4tYpp0s83WJCfVW65Jq
	6mN5+DLOvnF1sshZqU4t5S61ZtkkQVECWJHqdZQgjPvj3DSY/cycx/10EC21u/HZOO+cMQxjmr6
	lv6gvzN++UKlL0Fdea4npu5zQiZc/OonJ6hqbBuj7cTBP75HKaZ7x4z99ACeGWVUCcaAnTVonTK
	7WTg76GzAbQOuYzUzBsN/Hze2ZLc3I6ny4fhgKLmzhWuYpXuPV1hg1+2yiBCyZ+Q7LkS7NHJH1T
	WnjK1jzAzJ53/14lJLT8GG5IipO01e4QR1zaSaf8Zm0BxQgB5tzQKADF8OzgH6bWHDwtE9qFL0c
	IpVs9I7TeGVZVe7HfWCXVKMUo2kwkHvrgvGD8trwtqdTyU7HATISJD+cfhXD4
X-Received: by 2002:a17:902:ce83:b0:2e9:3d65:22f1 with SMTP id d9443c01a7336-2ea439fbc95mr34017525ad.20.1792637514116;
        Wed, 21 Oct 2026 19:51:54 -0700 (PDT)
X-Received: by 2002:a17:902:ce83:b0:2e9:3d65:22f1 with SMTP id d9443c01a7336-2ea439fbc95mr34017315ad.20.1792637513713;
        Wed, 21 Oct 2026 19:51:53 -0700 (PDT)
Received: from [10.239.96.176] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ea3b4113b6sm17063935ad.19.2026.10.21.19.51.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2026 19:51:53 -0700 (PDT)
Message-ID: <4bfbd19a-5fda-4859-89d9-60e40950dac5@oss.qualcomm.com>
Date: Thu, 22 Oct 2026 10:51:46 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v21 11/14] arm64: dts: qcom: kaanapali: Add CAMSS and
 CSIPHY block definitions
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
 <20261011-kaanapali-camss-v21-11-04fd28d815c6@oss.qualcomm.com>
 <f275d9de-a51b-400b-83ad-298d0fc9eda8@oss.qualcomm.com>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <f275d9de-a51b-400b-83ad-298d0fc9eda8@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIyMDAxMSBTYWx0ZWRfX35uc+7SqrXFz
 E8tNFZJ40rBl5zGLZSoCTtx7I0BBP81lrq61o7lRm2c5whmSQ9cEkFNFGW7o7nxuY+akWk6vO7J
 4WltwKTaWeYBqgRur3Y4OOKUhCR6MpbhcEVSETevby5iicCKLEDmkM9URzfYbIVaJDfNWTCOdxM
 07bT8zHYHMpNn8mD+jSp8cIGJWVOoOUY0LxHFNUOG/58nQsR+SQeg86Xdyj2WByqlpCMhHTC0oR
 zHQwL/amAe925CoAbpp0Sh1Pqu1LkLCw8OLgKSYp7SsNSwre16oQ45kpdyJY2bQ6O9QDGEdaJjA
 Dh7ZUCfnNg64hJ3PWHMblCZzKWhm0RX++CfxWLeAGRiG1HDe1a7yYdJ9cHJlRX3ZRpCwLxgBpTR
 1/5duy2lD8DzK2857he5dmCOnTP0ffG8Tw4RKYPxpsVUCmosV7zGBtqDwd3sW/xHmCLGNAroG83
 NJmZJYdIwaEaZpJhnvg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIyMDAxMSBTYWx0ZWRfXzZ7dwD4ZiJK1
 95thrY3PGNShoZz/dICqPl5VK3mokW3pjZxI8J4+0klfd7WuSI/R7ajF5JAi0aUrynTp1GQbJtB
 s1Be4xu+OhkoXh4l7Ks1ogmsbm4EtUE=
X-Proofpoint-GUID: BEhzmQfEzBkoPL7mg574s6UNrdGXBNfs
X-Authority-Analysis: v=2.4 cv=NaFzRGD4 c=1 sm=1 tr=0 ts=6ad97a4a cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=GmJ2lDigl4HxMnUU5kcA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: BEhzmQfEzBkoPL7mg574s6UNrdGXBNfs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-22_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0
 phishscore=0 priorityscore=1501 adultscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610220011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_195155_228691_DA3D94C5 
X-CRM114-Status: GOOD (  11.74  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/21/2026 9:59 PM, Konrad Dybcio wrote:
> On 10/12/26 8:45 AM, Hangxiang Ma wrote:
>> Describe the CAMSS and CSIPHY blocks on Kaanapali so that camera pipelines
>> can be enabled by board device trees.
> 
> [...]
> 
>> +			      <0x0 0x09191000 0x0 0x20000>,
>> +			      <0x0 0x092dc000 0x0 0x1300>,
>> +			      <0x0 0x092f0000 0x0 0x1300>;
>> +
>> +			reg-names = "csid0",
> 
> Please remove the stray \ns between each pair of xxx and
> xxx-names
> 
> otherwise
> 
> Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad

Ack. Thanks!

---
Best Regards,
Hangxiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
