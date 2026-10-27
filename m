Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4C760A2606
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 11:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MGBd1q02;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=g6UyFwRA;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=JuWb0bF6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4ZVEUurprVFxk1qbdguGOWAoG0+kmc/IPUKMGXMmODE=; b=MGBd1q02fgiRcDLPu5QGhUqRO9
	qPQlyKXIf7U3pCdRwo9cdjuVSvpdVbo1TjR3R5ZQn8ce44g+jcSXMUl10sM4T7gwfgkT3CMQXVEF9
	lkV9UnEvhiriQYQc3DkO3MNUTL35cOJGeOAaGLN2hrRSek5AmYaQqZbB+u0YrHP4JD5lTRpoX2g7x
	Qfx9k+AF5cZJ4yvqn/nTz2LN5xR61wQOkKzXRxE62icbystDni9HDKtxNsg7Brc82F4TMwIxxdxqm
	mFyM2k5B89+kif5ZlMfJCihEo8bhSIifYXVbWmyM3h1ZwkPUP+ebelsWmbNwa6sMZU2lhpDk9njot
	YWFboabA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLevJ-00000004NP9-2igV;
	Tue, 27 Oct 2026 11:00:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLevB-00000004NCZ-0qOt
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 11:00:50 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69RAe4oZ1935912
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 11:00:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dg5aDMm3VzAaO7yqXiSIZx4X3XJoH5B6cD+TxrNA9rA=; b=g6UyFwRAdDpub3xv
	KavARD8Bjry6BX3/Vaug90AWHbvNAlnHsYB1LfFUWk2cyxTjGgJyJlnby68w3tcl
	AEMJfA8s/vnOPVIzXo60vyff9UqAzW4u8C5RhZd39rAzYOJTWWkjYFjefKZ/iyaa
	PrYwlLX120qSTGY7KxSbJomU4sxqrZpmqBFOq+hx8fDpJXJR+FwnzRYKA8bqoVHd
	LWj+GBSb+tIZptX5zB6yxHcEhM9AcH3wrqAkX9T85VHvMPW7ROdczlPEGoIki20Z
	8VaDyPPnbnE0m+WFavUkq8UdLdYR084iZD5MrlSLFM0/zqTpb2odNX8CAW8AufSJ
	aogcxA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjfavtfxb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 11:00:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93f2bdebfc5so119591485a.1
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 04:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793098847; x=1793703647; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dg5aDMm3VzAaO7yqXiSIZx4X3XJoH5B6cD+TxrNA9rA=;
        b=JuWb0bF6OfRZOs2FaEsyhej6PJFAp570VFWH2BdmkVpKnujarSVYWol6ZDLL8AemvF
         Ci/JU5S5rqadWE4q7D2EBGTzLa5LljGjE6UFBU6iFIT+iMIhlVKD+Eb2A/SC26lpndlP
         /4Y+Mc8EFF160BFfmvc40DCICS6uR3byFVGQhtuwrRuCwAvigHJcUmU0qJoweeOvKKrO
         5nEUgYDWisOm6UXhcD4X8DZUpK/J29pU4j8sqs+9lBq7yHFiqcyl5ANdIyCwcqvWliaP
         G7k1iY4q62nMWH3poa5hbKWGlrOTzqqQ347PWD5sOwoZZXRSG0d1fzaHAOzIboS2HcNj
         3GNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793098847; x=1793703647;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dg5aDMm3VzAaO7yqXiSIZx4X3XJoH5B6cD+TxrNA9rA=;
        b=TXEPqvc6/bc1K9E+ZKVpjJEYpeask+MuymqtVTat8k6Sq2JNJoUoHVvNXpA9T5e/89
         kxwYMv7cE/JGMpwQfowYiGW91KBE/WUA6VzCn+V0Wo9I4xG25VDpUmEty856X8TrSnzw
         zPraPaluRVIzNF9aP04AwaRm/TWmveKPpM3OOnDd2u+mTgOSMjZ5sE6hXIo77ZDO0uQS
         3OWnZDZF/Xe8g8NQhmUQAA4LSfQUGumeVBgIcOwhO8MHYXE4h2gdodOcEHl0QIKrYpxb
         /fRwhnYf8xtvNn25qyj4sr5XZ3ZsqT/EVJ0RLDhr5/WAO/REYX3wuq5vgT3lgwY1TK37
         ulKA==
X-Forwarded-Encrypted: i=1; AKwUvBxkgUQQ38KsArPejXk0mgUcE0gKd2YAaTTJig6x2KtYgAiqJHcHKsIDfWCSxbtw9NaZM6D2tjGDzgQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYLb13RlL1q1a9J+XAkvU5OycIJWMfJMCuK7Ik2TGvGhj6lyBH37
	R5SR8xEN8jw6iD1b7U57Zp2xQzfpYBBWTH6Id1yu3P3YE8WyJmb93PyEtrNCwrBE40DjCIcmOIF
	yAF4aIn17nKFXGVrru/12Q2EVVr1jo0Hf1Eu2Pq1yNHOhGHKg6Qamg5xyCXkG+iqUnsg1
X-Gm-Gg: AYBFou3Nxt5smiiXKgdwQjB/o3jP+7mpGNF6gvYwYuxFyLDRg3KMmneNA5yyGCGlYdB
	cqZQCE8QmN8Yyap3YerJ9r3EVQbwxSvFWP6d95APn+gUht2LTb9yVGLNuW0x4f9UgHxWTM8JZ5d
	o/lu0TmIs786SW4YjUDjdLY43gQnPv9civLXZyetTiRwmU6oVj2wjyeuVgryutCwvVCcq7D7Xd0
	xv6sdbAZsX4A8fc/JfTHR2OMUyxQ0nyAu/MYaEH8B7esoE9L2BzH26QcGkkMIU04x0AIO0OCIAW
	dtGGec9WE0jzt2oto9BTPVTdOF0JpwmeVpt4NmU2XHDx26piXXK77JHJArQ3ErJfR7fwhtXGmH3
	qEml1lbN0t1AdcPRyVkUNgQ==
X-Received: by 2002:a05:620a:8703:20b0:93f:a34:d9fa with SMTP id af79cd13be357-940ef7d5676mr1494957685a.1.1793098846398;
        Tue, 27 Oct 2026 04:00:46 -0700 (PDT)
X-Received: by 2002:a05:620a:8703:20b0:93f:a34:d9fa with SMTP id af79cd13be357-940ef7d5676mr1494942185a.1.1793098844938;
        Tue, 27 Oct 2026 04:00:44 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b4458dd28fsm4706281a12.3.2026.10.27.04.00.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2026 04:00:43 -0700 (PDT)
Message-ID: <0032f652-4ba1-4a52-9241-635207f0caa1@oss.qualcomm.com>
Date: Tue, 27 Oct 2026 12:00:40 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom: Add SA8797P eUSB2 PHY
To: Hiren Gohel <hiren.gohel@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20261026094118.3264112-1-hiren.gohel@oss.qualcomm.com>
 <20261026094118.3264112-2-hiren.gohel@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261026094118.3264112-2-hiren.gohel@oss.qualcomm.com>
X-Proofpoint-GUID: KEysKYJbJXiaOR2UHwE7wUu8aGOWolH7
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDA0MyBTYWx0ZWRfX7JDQvXmDIN2k
 vC0o2n1iD9wbqua9jAk5X565PYgNuCc63bfCMwcVndWYuVKrLgn75UrucGF56X+uZwOQN8hqTPA
 tyKoE5aumo9cJnaAQ+cgCnmS5e5EJvw=
X-Authority-Analysis: v=2.4 cv=EIeTQFZC c=1 sm=1 tr=0 ts=6ae0845f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=3LHc-E_swVJ6H1yvdaMA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: KEysKYJbJXiaOR2UHwE7wUu8aGOWolH7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDA0MyBTYWx0ZWRfXzLRWxUrwyqxe
 EM71jmhqxx1oxLgkaoe0xEdhJda8bzTf092kK1d0NN70UI1lOTTKkroAL8JYsUunIgvMYdRB2FI
 ov5BMAqwpSbV/6sQ4tcKxurgVHSNpKd73axyC4etqAS72DuYS+jrTHkS7XwTeIi+2GbV6rBxP+5
 itHZkMRiXVc00WJmk+fklbwsNPC/StYbzsJDj184nWq37FuBLDLdNGEy34qvLEl46k4UKjuSqpb
 bIcIRHgA35G44+2IxaEKfJ5F5g0zHDRkzIljpISlUcJQiXKPp/fVCfdGavw89cx8jOziht6/ZoE
 Yshia7dKHhIbLQL6+9SNbE0Tz1lOAv17Clco+Wdx8nbXjeUXbFYuevBvIZgwsQeAaXPclfNER+V
 KOQTBstN+coteLyuK04h2AAZ01+pnizomVz1BNIFHfOX/kJwpv95QlqfWK81hvVEn2hTDMXb6Yr
 aHxtk6etC9D0lu6bEtQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-27_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 suspectscore=0 spamscore=0 phishscore=0
 bulkscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610270043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_040049_368252_18D49133 
X-CRM114-Status: GOOD (  13.55  )
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
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1,
	WEIRD_QUOTING autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/26/26 10:41 AM, Hiren Gohel wrote:
> SA8797p platform abstracts resources such as resets, clocks and
> regulators in firmware. The SCMI firmware exposes multiple protocols to
> control such resources which are identified by protocol_id.
> 
> For this USB phy, 2 SCMI protocols are exposed by the firmware:
> * power domain management protocol (protocol_id=0x11)
> * performance domain management protocol (protocol_id=0x13)
> 
> The power domain has 2 indices: 'core' and 'transfer'.
> * core controls the regulators, the clocks and the reset
> * transfer only controls the clocks
> 
> For example, to power on/off the PHY, we should use the 'core' domain.
> To disable data transfer and keeping power enabled, we should use the
> 'transfer' domain.
> 
> Add a new binding for the Synopsys eusb2 High-Speed USB PHY
> found in SA8797P.
> 
> Note: the performance domain (0x13) exposes opaques values (0xa to 0x11)
> for which we don't have any information.

How come we don't have any information for what the firmware
that ""we"" wrote does?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
