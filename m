Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDE5BC79FB9
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 07:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eCpfGRdtWyDQUZ1SweTHfIiriiE8esm8BoPD7iDnqo0=; b=GXNozmM9Ren522
	3wMsk554uvYfqAJwXzA/O+kLR9WxppNvxpceMYhmebcgWWLYyy//bW1y9mGyeYTjudG3Lev1bJnMT
	9265j/g4GjI0yXqdmRaX79LRjtZKkvWBan4aVcAxBEfyBfMAje+K7+lXmLbZwaOdQ+Pc1WoW5eRdr
	peadHwwEd3YmdKP1PleRbZ7eB0xIlZ4Pj8EinZQ0aoPJwb5gEiv+zhatPKNq0T2/Xfa5VgCZhiR7A
	sJznsMz1XdvG4elqO8LM4i/8SHwEEdEsXAPTW+uU/U1n06HSHZnEOHOspvHpi4mtpuCnXn0P389fm
	4SvCA+12d+KsdXg6ddvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ZT6-0000000Df4H-1NTx;
	Thu, 10 Sep 2026 07:45:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ZT4-0000000Df3Z-2e8p
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 07:45:11 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68A5GaC51108017
	for <linux-phy@lists.infradead.org>; Thu, 10 Sep 2026 07:45:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UgH2jtEtLN13NesQS4mHFrUP2jdvXt2vKYplvCPGTSU=; b=XGD5juVJnMNwnkqs
	8LvzH1QFHIX1OhqIAPmigc4wD8Cu04YfIBxzONyg6ludMI096DE2Mjqscc0JXnG7
	37LYKykjmDl8tTi5zgfGqx607uy6v+cRcSnX2vy+MATceJumgXyKR2DB6wSd5hH6
	TslSzgOmKpzWqWZk/WYwIXLjBXEoZQNPnZKWGPsU1ALrXqn9NMx98NqG03ulCqw6
	KUtsBbtob3ki/ar/1nds5Z31d9KOQra10EDBcPRQj4coC2Id45jvYzrmMn/oEVR1
	k10FZuXAxs2YnhVpmp+NaTD+MZ57qf3JO1Q38HFC30Sth2FywePgye/yn8ft+h9y
	OXxSBQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gkcyhansr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 10 Sep 2026 07:45:10 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-9390890ae83so95635885a.3
        for <linux-phy@lists.infradead.org>; Thu, 10 Sep 2026 00:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789026309; x=1789631109; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UgH2jtEtLN13NesQS4mHFrUP2jdvXt2vKYplvCPGTSU=;
        b=eRIJ+B+8GBJ7tEjtE682Gu31mCsniQlq2OT1anS4feoLkhmWdswwRFhb9Ux+ZuJlNO
         IMvO/VjnX9zdVgX2NLt9ZytD/7UdTBet3qm3MdsdEhOBuPgVwczVKfXO/CuoxjReZ8LH
         cN7nfq+hZSIsifWQ1TWuc4fnZP27saigS49qIs3gc7IJklaGCIOyDj9d/PhCWD6v9p7F
         W52Gtmt3A1Md5a4CTokFBRCf4R/oZ7WgDD7BDSKZhEGuzB2IsDXV0zPcQWZw62iUjK+q
         jawQmWWePAyn8jwNe2cNCnhEm06t7sJmUoIKFIy/XleanKprCWJlal8QZADuArz31blL
         6KJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789026309; x=1789631109;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UgH2jtEtLN13NesQS4mHFrUP2jdvXt2vKYplvCPGTSU=;
        b=kNk6S5yfjZaGEUIyx+cTIL9qTeM61lA15u6EQje83jthrtH3P+NjBF1+B7R+IDOHRD
         FOJ5+FlxD11WqE7ZIDKnZb+VC9CEXEZY2FYpm9Qs0SXsqXv9/qksmUxPv8zxfEPqPNtZ
         ggLyWBX4e3yNGqY5R0wR08TVI3gzF9Pzu4ujvCoufE/BwRZTc3RMaVNEzrurpQlarqdy
         Vu4fi5QRyvTF81ASAHOd1hbiFPkWW456XTSpTg16KnseL18FWNKv13PgsElXDuuCmCU6
         4BbTBoHs3YGk74c80AvLJyN69qrMyI3uYFquzGZLVcCHrpLx+jd1YRRQjFrh0BMJQNDG
         wHwg==
X-Forwarded-Encrypted: i=1; AKwUvByrOTypc/AQHBoyMQGQpbaydYcScdsKn/Z/UCWxaVvffMTaCv3L2fW+jgtr8+/r227o+1x0IXkqfFM=@lists.infradead.org
X-Gm-Message-State: AFuF++moPYlHefDDrO2nU+eAo3I93DqIi+IHiwuPZx70310DX2scnFsp
	KvSHWnn24Mfiz/pnIXzB/VnRkgVj/mErLDK18vQk6HEolDcciTdbQJBrpFRER5wZzS7Qet0WBhO
	UyGdHta4/qTpZ+8fHynRP46ZDRVpSgCskFu/sOqeeuOpxl/cn9Jh1j3tUAE/hMOBZW0DO
X-Gm-Gg: AYBFou2CgWvlkFaaawxIWeVjxPFtN43tyqiFiCLvFGuUheNqP2ZF49f3L+DCFYV/MJG
	v8dQ3kadF4HPyQTvEve541/3VEPfNyXKxug0HmV34vbQFcaVBjd7TtXuMUO4YdqcMas0gkDaWu1
	ZJVSfGoYlkZqq6Xpi2aYcsHR4YGdbAP2lV5jGNvZtz9bwsug+GHwbFDomuAy00BkBiXT/6YISNI
	MfvCvRll2f+qwvr7Mmb7l4j6D5AXMwvB2asNqzK4p/WkVlGburjRL+gRZ8Fa+i163Hx4AlMBqem
	2HaSTg2QNCzzLUOnNJFgR8mgvjiObMGmqI4v4JK0PNbzNf0nzBJPvrj4IpOwCKuKgUoL+38RVcF
	8Vq/Fc2TVMnWZElc8wBExpQ==
X-Received: by 2002:a05:620a:618b:b0:939:48e9:51a1 with SMTP id af79cd13be357-939916f6b72mr2763873785a.2.1789026308986;
        Thu, 10 Sep 2026 00:45:08 -0700 (PDT)
X-Received: by 2002:a05:620a:618b:b0:939:48e9:51a1 with SMTP id af79cd13be357-939916f6b72mr2763869085a.2.1789026308504;
        Thu, 10 Sep 2026 00:45:08 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a7e6bf5072sm7672972a12.28.2026.09.10.00.45.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2026 00:45:07 -0700 (PDT)
Message-ID: <907c4602-f4c3-4491-891e-271d448316a9@oss.qualcomm.com>
Date: Thu, 10 Sep 2026 09:45:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: qmp: Fix alignment in pcs-v8_50 register
 header
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260910011500.659353-1-shengchao.guo@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260910011500.659353-1-shengchao.guo@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEwMDA4NCBTYWx0ZWRfX1KQmEKvG2NLi
 kMKxf9omyx1fyLIHf0sfHkXt6gD+t/5i5KG4ZTTuTIR1uea0jen1ubL312ebJYeJo3gya8dT+hM
 hrv5AgzScWmqV1PDHlPmVTSB3fjMT1C4mYtZ7oKb6gcfKFh1rsSZ9ExGFxBIll9+1OqT6PVOOOm
 Zk1B8eUbvCmVO0Tp5Uog4Gw05+Jj/iMzVY2BbFU+q3qQIXk6RYmeuPtuJgYJbYTHF//OZYrXqxd
 VAqiC9yZj6AfBuQMeo3hdYutLFSPSLTowW+cmcF61v41W564SSiKwMB1nJG25jn4+DvAt/yOrpH
 Fg9x7tXSrhKgbEisMznvZ5Zl8rl8mdBptCFl42S14apguzNwXAoxuGvWkPMSEN31/LdMSlWq9UQ
 B/cBXosiRnqpG7fOBSPpwdYeYbd5JAaayLANTdy33CDRfMX4mrSy9JZPdOliFSSOYOSkgr5feAP
 YxvvMAq/5vcD6uz08QA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEwMDA4NCBTYWx0ZWRfX/xGTpGFQGfej
 Vw76npgzK2p0dLCi4vi6FPWXwyKGz3atx5pT+q2THFdll6HOR9ePoYRFDz1NXQPbW886qEHVC0J
 EUlUyt10UsijwvkvcOifAPDNoSpfgNk=
X-Authority-Analysis: v=2.4 cv=YKgKWhGx c=1 sm=1 tr=0 ts=6aa26006 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=eKJ4GL2s265JBOqWuI0A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: jO7NZaWmQCrRaoBPHyt3ltLiDGGjYOUE
X-Proofpoint-GUID: jO7NZaWmQCrRaoBPHyt3ltLiDGGjYOUE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-10_02,2026-09-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 adultscore=0 malwarescore=0
 phishscore=0 impostorscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609100084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_004510_680536_9EB3FB73 
X-CRM114-Status: UNSURE (   7.63  )
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

On 9/10/26 3:15 AM, Shawn Guo wrote:
> Fix up the whitespace so all offsets align. No functional change.
> 
> Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
