Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9839C7EE39
	for <linux-phy@archiver.kernel.org>; Mon, 30 Jun 2025 10:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EP5Mj/0PyY/TlhVkH69qFGYFGQayXwMQGrIzC/Ca9RM=; b=nXMnOBNeEQaFZ3
	9BNO03PUwzifLP1kPYCLA2VRJqZM8tjnHJi8wvERX7mx3kqX9MY/Ycx1BNAz5uq1sYdYIBulWSIqS
	JMrg495GpfMxfNq3oyLVc4dAhxQWyXpblRN6tT0w0FevarUmKtFbIrfDdDcPoA+29T115pL8ox2ji
	teJMMAm5fXvlaJqqQGSGzuNbp4ynY242Vs3USaonSxOA45aCVlIEX2RY6botLcGShJZysIbOKbybS
	bD42KUd06Cdc0uPJYdhLk0S6FF/6ZX384aFRbZTydNR72p8qXAjh/TfnDrSrGmE1kFfSNPVGUeHsi
	joBfV0pQUsTvp7AvD4wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWC7q-00000001wfm-29j6;
	Mon, 30 Jun 2025 10:52:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWBlJ-00000001tIM-32nZ
	for linux-phy@lists.infradead.org;
	Mon, 30 Jun 2025 10:29:23 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55U8DCb3023321
	for <linux-phy@lists.infradead.org>; Mon, 30 Jun 2025 10:29:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IxRkhXbBD2jXozBBx8BaBKLc4O0rV/qo+XOBpnpdB7g=; b=pO8dkdIqCs5mR6H2
	8d1kW08EEifkh7AoWffDfS9pzsrLwDbXMzQ2MSuJDEIenQLdH/G47ieou+KhwjI9
	JORYzC7OB+pLBEEji+zx/7JsA0eL4cVtSZz35OG9qz3uuKLfwK7qeJpaDSAZJbHH
	Glf9MTCv9mY+5zks0K0lBnn10fg3xSnUiqeOjO3DGnfLYJ/xJWbujNaqEZ1e6hD+
	vSJmpzqu0RYQ8KhuD1vy3S53HqfdOusGEYcffdFWoKjkUpelpnZRN1yIMBYp7xcr
	uUBSizyHGm5LiEYGZ5bKvbrYNM6HkyXhvdizrV1Vg/3/OE7zbJ+5kzG0w/anN97G
	dB2fbw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47kpq28f04-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 30 Jun 2025 10:29:19 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d0976a24ceso149660685a.2
        for <linux-phy@lists.infradead.org>; Mon, 30 Jun 2025 03:29:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751279358; x=1751884158;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IxRkhXbBD2jXozBBx8BaBKLc4O0rV/qo+XOBpnpdB7g=;
        b=V5TZbuOOhbHWMbMMxRaGKaF63MnZG4KYZBzL8fAskX0HKfOcKR3U0MLXHsO5LU32dR
         n3UdWZrZdr9I1zgBqqzkbV1CmivAmN3qwrIRuyrAFDJ2csMUoyMbdbWr4Sg3HIeOMz+P
         8PNk2vgsfsTzrP1zyWPVhCaD2XQ3va6trqq6zh/PNZkYYNmX+PjdkWqtn036cBX3dXMB
         mtUDXiCw/suslB+wcVY+ADZdIXDPGfWaJ72zGcoVAOLxNvUXZ5U20rRKd9Bcu5gk8Qgg
         sm+qGIYK4dNSzWwz38JR9ULSc1Z2flgLH/PMRP0W+mlw0F6yDgGkxju+vHT6VHAcfhE1
         F7/g==
X-Forwarded-Encrypted: i=1; AJvYcCWLbhDWHt1EdbHfG+HRstqSfYKUrRZxjAiEqXqak3gTmYSkqh2L0XXMb940QevfK/6iVpSAT451AOI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwAF3IeZ1hvLuJECPt7v90sYApxsYUEZBWjlVPgEuam/pYdKOr3
	L5xy0qQjb8w2bJHfAAHUDC7Kp9k865he9JjtAIGiSsren+E61tJaogYeQ8XwW7ZJaJGVBcnMDPA
	icbCmcjMK2Oaa6HzAdOtZGaHwNovTPZ83lw5pSXPjDR9PkmTVuUlrc1KIatKCnBsdEFeVii1G3d
	GJ
X-Gm-Gg: ASbGncuiGyfKRZqEW9YrnT45IlaiwnK0ne9B1S/UhVZamvCdwJPskmVXaV7BmKBI19w
	gEIkGJMhkkOeE6rE5M4jFdJCZ9s0JpJNptb9Da7EWBL8xvfvoWjNpn1PRgjS6sYgRXVbFU6eTOB
	PZ4gLUfPctfFebzGe4Deq3ZemOpmPkQ2rcxeFz696rsW3yjjJ3YAbI4Faa/Y+uvsbYXbXAb+gLM
	EAO9WbF/gs1ux36qb8r8faD1Qt3Zk/ldLrEj521vbUDamFiJCxZuMy6VODn+x6S5ajd6S9xPiPF
	fdyfd68Jv8NqbmdDZAdzpGDzYFt/Xivn7R/epE58dnZQbrVvfUMMQMlZzD7yohql2xJL9zLGGli
	aR+dMmadD
X-Received: by 2002:a05:622a:22a9:b0:4a4:3b38:cfe6 with SMTP id d75a77b69052e-4a80739305cmr48946461cf.4.1751279358048;
        Mon, 30 Jun 2025 03:29:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEq3TUuq9QQu4q+5eVhyu3awFeRhvpmt64uHtXnfazNC8wlrVyLUUqKAbg7zRjdnEtGDAV3YQ==
X-Received: by 2002:a05:622a:22a9:b0:4a4:3b38:cfe6 with SMTP id d75a77b69052e-4a80739305cmr48946321cf.4.1751279357583;
        Mon, 30 Jun 2025 03:29:17 -0700 (PDT)
Received: from [192.168.1.114] (83.9.29.190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c6beb8sm649121966b.132.2025.06.30.03.29.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 03:29:17 -0700 (PDT)
Message-ID: <2ac4f10d-c9d4-42a5-afff-54153f8531e1@oss.qualcomm.com>
Date: Mon, 30 Jun 2025 12:29:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: qcom: phy-qcom-m31: Update IPQ5332 M31 USB phy
 initialization sequence
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@kernel.org
References: <20250630-ipq5332_hsphy_complaince-v2-1-63621439ebdb@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250630-ipq5332_hsphy_complaince-v2-1-63621439ebdb@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=G4scE8k5 c=1 sm=1 tr=0 ts=686266ff cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=fKQzr7EGRj+VoE0XNsDNvQ==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=xc97Rp9ifvSRjCmUYYIA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: eyK8bWJNKZoFbArVDxwefih8WdSrAIgU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjMwMDA4NiBTYWx0ZWRfXwBoykjfDnDem
 0WoTkDqNTHvImAc5dtl0Q4Hzg2g2h+/dJmc9hZXipzdmlG+0SyTyBw/MO+29WqDE6S+y65rBtp7
 hVqlRSF00TYKeNWnF5kLiH3A4pqyGoswlGD2tuDh+hQQvwkFvyPEXjMsdImXXJo7yTid6hBB1h2
 FR0dHmSTqqe2EYW33oklnvuzksqddJlewAT7TNefVcEOUYhIHjFWio53mAcH33sPHZ0PuCLsXoM
 SxWDzaSq6Im39aNktOa7M4dBeeHLEIzGN+X7C8CkML/UISnn5uYwE8esJ9j1RzjhRCtZlWbYeth
 qGn0IVC8StJOtH//rUvM7YiYweK8GrxAFuvU0ePdhvSac7TtpE7dzzWG+0dmYHUIRMuQ7jLKO8z
 n+Atqx02xnwhjHBFr0Vlx0tAYo+RYhIxOY3HaHGLt9083qGYyS5MHCcMg89KMkH6fMpyPQl/
X-Proofpoint-ORIG-GUID: eyK8bWJNKZoFbArVDxwefih8WdSrAIgU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-30_02,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 bulkscore=0
 adultscore=0 malwarescore=0 mlxscore=0 spamscore=0 impostorscore=0
 mlxlogscore=789 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506300086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_032921_784134_330F5629 
X-CRM114-Status: UNSURE (   9.07  )
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



On 30-Jun-25 10:18, Kathiravan Thirumoorthy wrote:
> The current configuration used for the IPQ5332 M31 USB PHY fails the
> Near End High Speed Signal Quality compliance test. To resolve this,
> update the initialization sequence as specified in the Hardware Design
> Document.
> 
> Fixes: 08e49af50701 ("phy: qcom: Introduce M31 USB PHY driver")
> Cc: stable@kernel.org
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
