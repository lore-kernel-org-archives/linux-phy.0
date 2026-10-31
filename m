Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37970606A31A
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 15:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HfCkSFB/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=jZmKGfkc;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=KojGCmwe
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=VTSP4hyOqZzxjMAMb8pzvfbRtMdSmAVVt3lb0yZ9+Y8=; b=HfCkSFB/K+c8C7sPQcb/dobxy+
	qfzkep1FTPEBy0wikRa3jf0w1QEjlf0WKspsbCsTYJoUid0kXy66kywefr06DJgXNj1ttnfJ9jGfh
	c2AmnfjUgC5EBTPJ4tih9FEbVFprrVbt8rK+NHbgiduZsRiViUq9RQmIM6YJAlV0xnxdXbVCKN8HA
	WwPMqX6uNi9TSvW1lpBDUvdtFxCvvyMsppXZ/bpzx4rzOTTIpEoxfJwY8Fzb/p0UySGWXKEa5lIGB
	qXzZHMb+J9mtfNIuBEQICdvatz73UbQUyGZNjZOTiUMzxiId852RqDsVkEA6+H94Pjld9XnfogodT
	Wm3kzYqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNBDk-0000000DRyk-3HuY;
	Sat, 31 Oct 2026 15:42:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNBDi-0000000DRyQ-2ojs
	for linux-phy@lists.infradead.org;
	Sat, 31 Oct 2026 15:42:15 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69VD0TXk2162544
	for <linux-phy@lists.infradead.org>; Sat, 31 Oct 2026 15:42:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aFV3TPaYtQ5flXiMSYRlyBEMDBAUTU6tbyACU0qLOVk=; b=jZmKGfkcQHp/K7Co
	1SBTyA2or4VZDoYvwyxP/e1gwPL/aAD+pva6G3TGl59sCV4ALs0QuaZ3zQ4U7yt1
	0TWtfTWVRDKV9oe9WsiJqWKIpTiutiELbnAsnzx0pickcQs42ZU1718wrQnS5NoY
	ubPRVou3pQU+0AOcGQpnTb7HPfQur/dcnXpzLwkoAO9VnoY0Nf7J1xm+EinKNAMa
	mG0NUXgIN8MaiHAJgCBK+HKPgGcn2UjEr1GX+yzSgLGyxWdtpZ770AVgqcusx5f4
	eInPboOgp2Jan5w41YcYmPfcJZdE42HsklZ78lLJaMUtWd/dZX11msvDweBeS6+2
	m5g7hQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hn8j2set0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 31 Oct 2026 15:42:13 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-36a3451ea93so2651131eec.1
        for <linux-phy@lists.infradead.org>; Sat, 31 Oct 2026 08:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793461333; x=1794066133; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aFV3TPaYtQ5flXiMSYRlyBEMDBAUTU6tbyACU0qLOVk=;
        b=KojGCmwemIxhsNMT0MDNipQRX0iOavYpCamNZsGKZFsMw1O9k/9qgPibRwNwuJ/lpJ
         XCfv08AWCI0SqjgbDrMjHdzlrWWJYnOhmhnbht2egtj3n77e4TmEi2mY5OXVkt+gtgoE
         XnXG01EtMYd8P7ZRiwA9dfararAjufjKru7G7QC8R6T/sDowaTQbMdhtigqRkt0Yhi9k
         +1NP2WhIhEP7HcZ5GYiELL2bbbg21GGdHf56VI1UdVyNFSBAwknE/vnWUEb2p6TbBSll
         +wPOUEyYDkU8X86mBGOkRGmswXvUgdx1rTK+WysvsAWMbeq65ixA09iV901VRHNx3PHv
         7f2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793461333; x=1794066133;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aFV3TPaYtQ5flXiMSYRlyBEMDBAUTU6tbyACU0qLOVk=;
        b=YgLdskXzkXMkYs7rABL8gofpLGMn1MNCxziu3kXEH4riuFuoSCTF7Fou2liljlY/MO
         e1Lc5hZFYSkL20eF2sLDekqy348aRHcyeBJkBvpvS98t2YsDsorj+MoNB0pZWhjMpw5d
         y6ceVFAx97GD/k0EIyUhNoXEU45jIYslavyKfSbD+KMGfgU4RnL6QBvLpdil9kCxs7DK
         iWAGa18WoNbpkKx7xebRXhDtt9gw6udYQDQDM3ajcAzYH0ho1dok6rXGpQyXE+5t6yka
         pxm3PQNqy6L6L01jvgTJ4++MIIw+xAurujxEpmrMmCkvqFyHwD/4itzUO7y3+zbSnVaa
         tGhQ==
X-Forwarded-Encrypted: i=1; AKwUvBynpRxBc69nnPP/FrnEmJgFM793suTzTFGugSiu4onjZyTJZNMMKEcrf5N2eQgOKaWpWBlGsQcPUms=@lists.infradead.org
X-Gm-Message-State: AFq9FYJoODl+pYWIE5sb3Eb/GfjVw319Ws5lM2vE/X+RGAIrUVQToR4E
	+OTQ2NyydNeCzeIMUoSwiCEpQ/f4pFWzNG5fAkkgWdU0Kfzviy9hWoMjerykW1sTUlEZ8Qzls1P
	USOPvZtWozE59dq+zqdUnK4QhJhNuOMVE+duS7FflFBSaBA0yolM5UVgU/eEJY6a/lL2H
X-Gm-Gg: AYBFou0aQRqpx/5nmWxe9Q2tKJINMPpnRp4gpw4Ct0UciYqHh4HHEIsm/W1bhQJVDOY
	yJUnh75WRPXtgYcA8+f1SVBKlbeZadpu93c9IIerOGmjfU0+IuE49W8J454s1qBrNopwLbDqAL1
	uffuOcv1gCCACdS/X+bTD2W6ib87yvXpT8kIDHCpVz194TQHhw+silFUPYmGR1lHTxloHsepjmh
	/8ObArpIJiky8W7eeYYw1zd51CpEZYc0HConpbH03YHvhjUGj0ZwYos3AtJEDq+Aq9qASgRmJgF
	VXlr48cX4YW8Nh+fvdHGvF+V6KYCVwkOTmIrsFvi/M9Q4m75C8+vsnP8leVs6xgnCGeVyP9p9L7
	FxZP7tRzwnj1KCdndmmbTD4zhh2TgReYlmzvfFHVi+MLwZC3uYm0YYaPKfQhsPDz51D/zSn8w61
	Y=
X-Received: by 2002:a05:7301:1a01:b0:369:f85c:787c with SMTP id 5a478bee46e88-36a4236a1d9mr8367559eec.10.1793461332277;
        Sat, 31 Oct 2026 08:42:12 -0700 (PDT)
X-Received: by 2002:a05:7301:1a01:b0:369:f85c:787c with SMTP id 5a478bee46e88-36a4236a1d9mr8367488eec.10.1793461331549;
        Sat, 31 Oct 2026 08:42:11 -0700 (PDT)
Received: from [192.168.1.6] ([115.98.177.53])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a428aed76sm18944606eec.9.2026.10.31.08.42.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Oct 2026 08:42:11 -0700 (PDT)
Message-ID: <f033b603-d397-4397-a2de-a3014c997278@oss.qualcomm.com>
Date: Sat, 31 Oct 2026 21:12:02 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/7] media: qcom: camss: Allow CSI2 PHY devices without
 CSIPHY resources
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: Vladimir Zapolskiy <vz@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-media@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>
References: <20261026224957.1115370-1-vz@kernel.org>
 <20261026224957.1115370-4-vz@kernel.org>
 <CAFEp6-16WAoyS+aY2BzPknsMtHa1cSfVYNmYvTKHm_MWqqW_ag@mail.gmail.com>
 <271ccc9b-ccf1-4254-9664-2f00b504a5a9@kernel.org>
 <d35b7934-54e7-425b-a223-570512be0374@oss.qualcomm.com>
 <CAFEp6-23L+4+yzVxX815ZA2x1_tN8SpzL7ciNcb9b+gBT67AdQ@mail.gmail.com>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <CAFEp6-23L+4+yzVxX815ZA2x1_tN8SpzL7ciNcb9b+gBT67AdQ@mail.gmail.com>
X-Proofpoint-GUID: YR13zqKFL5N2MYAQHfwCW4VpeOEVr8FL
X-Proofpoint-ORIG-GUID: YR13zqKFL5N2MYAQHfwCW4VpeOEVr8FL
X-Authority-Analysis: v=2.4 cv=S5RMU4sP c=1 sm=1 tr=0 ts=6ae60c55 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=iaXPdgsK/hfklW56b25dCw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=fhbCC2ozS9dPJYT3FEkA:9 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMxMDA2MiBTYWx0ZWRfX8D09ZxComPh0
 0jTr5cpSpBNzG48VpTiLYTYuhoirden7uSHiGKawwjiYsRrv+bu57ZZ7QqiP7iD3WniP1DGGcB7
 qjhjhjsQ26QHg/uTGD3E7CR8seBN878=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMxMDA2MiBTYWx0ZWRfX2npU1EVhO14k
 Th5mScB8ogkAMvixgo/gdaRdaeDAG98simbqmJLYa/92pHNonR3WXZVDWmLfBSodWg2WcPkD1rA
 NU7FfI8+31YEH/rs6LhEm7lTpHMm3ewiP3ZMHu9wMCplq1u0b56otr0Qi1e5C8Lt9ESYKUiUkXJ
 rRm4masoqhSSElBS3oaFoa28wys/Y/jkpkNhIOIv8cJeDud7KNbEAkld80HE/h4GzHB0mMHq1uZ
 OI1iMZHvrsHLrnRqkzT7mmS3hKVOG8Dew8r0Ct7WBsDZbBiyU+BaEFn6zNnYT6GBQB+pLNTV4zF
 u/wQk9LhrFkqzXlTEbRPyeZ5HRLiPzC+5BEXaohkLVEwjoSfHMxCPfxt+0wv1VHa5y8VrJ/gJpo
 KnMgYUH1OV1jsBrjdQuGcZFrlAkGz7MHUVdxDD2eakM9J46iUZDUedYfpio04Ae0+8QBrZx2Aws
 CqEtZJkAXEAnVzgvK7g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-31_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 malwarescore=0 phishscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2610310062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_084214_739156_E1A0E48D 
X-CRM114-Status: GOOD (  12.43  )
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1



On 31-10-2026 20:44, Loic Poulain wrote:
>> Bryan, Loic, do you think we need that change now, or should Glymur keep
>> the current approach for this DTS series?
> I see in the following in your Glymur series:
> port@3 {
>    reg = <3>;
>    camss_csiphy4_inep: endpoint {
>    remote-endpoint = <&csiphy4_out_ep>;
> };
> 
> Which CAMSS pipeline interface index/instance is CSIPHY4 connected to?
> If it is connected to interface 4 on CAMSS side, then we should use
> port@4.

CSIPHY4 is connected to CAMSS interface/index 4, so the DT should describe
it as port@4 for a direct one-to-one hardware mapping. 

I will raise a patch to update that.
-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
