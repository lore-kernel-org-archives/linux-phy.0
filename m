Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE7A5CFA466
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 10:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lHINuT1DrVVPjJGeLtRDhCY/mR4us25QdWJBvwWJXSQ=; b=XVJvOBUqQ2j9Sb
	oIyM5ZKeWjGNWk3pv/YE2VlHlD24qHSLmowN1/YfdczJ4SXM53p5hiyVEQTW1S+tslnd50e0T021p
	1jyAzSVGHZTHgNpnC/QKFX67tjmM71trhUoNSP0ZceUZXLdTaWp8wMybDSXVi8mJtliEwaJ/+nPVL
	pMrgtdVmmipYML2/pWz+EGg2qYnfOO9LtwrrqzUTiRhiGjaDyLSpJBtoggfXOb0dCGOjcviHsdkFu
	GRJQbaQ20sSQHd5gJX8f/7vUw3BVv018Ux6Ol84xazLgB6z8i4U565WFFMgicNYbZfXN0f3ITLiZe
	CWkcmUHi1UZToZKRT8dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTss-0000000BQhF-1xV1;
	Mon, 24 Nov 2025 10:33:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTsq-0000000BQgK-1RkV
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 10:33:25 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO7lB0T2397579
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:33:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	J0Jm2grvSgkUN3rYx9rkJH6YHqau0g7/jl3IwGSFlUo=; b=WCCUC1tQOjbN2r8+
	2Vdl0bGuAvsPaW0lQUsaIs6J8sxwmpSU4hcbl6mrgCSDd6CcI4QJ7txUR9+30xUD
	AkdHKdBid5ASaoBIH8xEuagoeLqs7ZBkbZI5Xo/WnNj4Ra+sRyDmHIVqVd13tvco
	JwKcqSiawBHYIA+1TroSgmpaYkgI6fHWaKG8DSXh9a0SIzVJIyFpzN/UUT0rn0ry
	Xm582wlyarZLnKgITP8NcM0lne7LentQ8yrNSsXysgW6aC/Pwefiywy4vpmmD+pv
	ijolZmrHmAH9p2m0Lf/awhy9OySrUryU2PKox1KClTX80Ztm2ijyySxBmIKYbzWi
	GLq0/A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak685vqxy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:33:22 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ede0bd2154so15462951cf.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 02:33:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763980401; x=1764585201; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J0Jm2grvSgkUN3rYx9rkJH6YHqau0g7/jl3IwGSFlUo=;
        b=eqAalLY0jo/EqkryUddPO9qn2LgArJ0yBcfawGGDKN4HMpZW/14PnOor8UGYyxPYjT
         931YLU5QHhdODat/kSWCg9dmFyZ/S2THzjDuQmmpziNZPnEx69qDpxkiucJzSqqpKVwZ
         qMNz7ZMaMMZfT82ZajOLwOFyJg8TLzC2kH1GfPdXRjDh+lEgDl5YrPO0Pkeag1pUv1mX
         Fh0EzFawZXwYWsJyHmldO9foZZDJXes+sY6Arj/oh2JEWJ/TlorUaogBUv9xLaWVe/5H
         OE60zCSAhRXxDWP4bK2k2mQzzGn+XSH+21OIdUCwZswgnBzg0i6CK3nA3TRhCVNLR9+L
         1WcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763980401; x=1764585201;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J0Jm2grvSgkUN3rYx9rkJH6YHqau0g7/jl3IwGSFlUo=;
        b=Diu0A9rBe4VkjsHYkmj6409TJjLB/lVAzfleK888pt8aL/swRnFMEzjflVWJwuoKCW
         BSCDbr13m340bDaWucLY6pvauV9RWoG+DerMNz6l7NqkKa81tp2q41/9F+RXN2eFLEDU
         1VnXCMQiNJEftgKCaVVZKw0F7LuTxttr0Lgb0dqjDBTy4jgBvayv4JQM1YvrUufpe4Sv
         xPwSkI/RXBg83ae3NFYaByWbkRnn1a72acFdewal6h+eVm+cmG/bqQAFEb2RyDLo2S9j
         MwZ1ODBw1PeouuFNrvR+tDO5A5/FwbJ6rEy5eBK5twnPG8kaQPrfaE9IumInA4F2DhRm
         g/7w==
X-Forwarded-Encrypted: i=1; AJvYcCXSRXekTdIyMfkA2qC1OewQmirGuu0rtQXUu3F1uei874SwM7a0e1BoF5I5YO/w0yBRNAR6qSN1rA4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw8kBxIkjRYi0g/7nnj+GSOoQ0nk+tzA/PQ3golKVtdGLmHKNp/
	D6vNJ+V7Mu4+qDzF7UuYBhPAZHy1uQ3lXTmLtRdFj/GhDyo2oSUjv7Cg2DKSUzSp9+ppzGWcIf3
	IMHVJX5WUwX5y409GFIqjNgFlm5Rx1ejySPZmfJE7DPq26Ex6/EKAD+MbnuRvH5Xqfkxy
X-Gm-Gg: ASbGnctThSGnif1xLLPkqVurQxGwLoJ3v3XjMITuuZfRFBsSfTKErUw/NZ8fZxf1IH1
	CwgJGhDi2lDG7irKrNQFG0IroquzBMo+rcB7DTkVLEuWZVpjCD8LUE2lsda7z+2VxyV5PNNnqky
	ZaWDMfpDeJH0mb6uX1UBuLo5aJ49Bw9W46xQGxlTHn6S+XoQPwLdr6P4ZupftBfovl10pBSolME
	MBk2F/xCPEHYu+fAZgyWKiYV4zS5syJmjf8gCjQOlDQeJ4+N/zvzP3JeWvkf5VbfSzjM3RUbTZs
	BnodKsiytp3U1DbQWr57RWc8KmHWz6qO2f1AwJ1rbB4Qk3U/1wFJW2u0r9+76ewuN8wrxjbwFmE
	zPEdOfJFK8n9t3De6I0Jl/V8qJlFNl2VF/BwRHFkyWn+58bzJk+1qhxf54wDY0RUq820=
X-Received: by 2002:ac8:7fc2:0:b0:4eb:9cb1:c290 with SMTP id d75a77b69052e-4ee5885a9e5mr113117691cf.4.1763980401353;
        Mon, 24 Nov 2025 02:33:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG8qI/bBiQVltXN4iDi+AWrAjaBjGs72AWTsdoCpGxXcUrId734AczoUQkVRTUfqATBAW+9VQ==
X-Received: by 2002:ac8:7fc2:0:b0:4eb:9cb1:c290 with SMTP id d75a77b69052e-4ee5885a9e5mr113117311cf.4.1763980400942;
        Mon, 24 Nov 2025 02:33:20 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654d80665sm1228920166b.31.2025.11.24.02.33.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 02:33:20 -0800 (PST)
Message-ID: <35cc8bf6-4927-47e4-8f68-97138263e7a7@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 11:33:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] arm64: dts: qcom: lemans-evk: add additional SerDes
 PHY regulator
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
 <20251124-sgmiieth_serdes_regulator-v1-2-73ae8f9cbe2a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-2-73ae8f9cbe2a@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Woom8Nfv c=1 sm=1 tr=0 ts=69243472 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=mAYSrJZFqx11qOWNMfMA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: 6ACwmDYaFpKuAowePDa_ryfnrildnO-P
X-Proofpoint-ORIG-GUID: 6ACwmDYaFpKuAowePDa_ryfnrildnO-P
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MyBTYWx0ZWRfX9qkirBMQ+nmg
 MvY5RMjYeH5LnmDobBRos9/9Q4nP+F5SfzKnCZnFf04l2Btuunl0A/UBvmUCqwDBCg20yH/tCgJ
 IaCzT8/ulw2tTY1LDA/MNu88ltfNbCzQGF9CucvEKPhtD120yCXQANQ57JGrQDbnJ+IL6AaVq2l
 s20TnSo58vbczBGjNZ9ugYS1LAHcJsJT4f4zg9NbcOp41M8gzfPROR2Qltq9wriJooZWUjadzZK
 x6ing5oiBt0PkwyiDLyAbrmAclTLSaKKc9FkhQKpUTOIX9K5lSDDzjq/EjaahQ2sM5cdpi8Dy8N
 XPnXXDIMwMwsqLTmrIMf9kXZsXALsa5IlRvYE4ByD/yW4USh8eiuZbLrEzVqQpAr4c8ojzWq/wS
 sGuP0P9FrpLL2cKFXvmoj9OA6BKbkQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_023324_507962_95DF76DF 
X-CRM114-Status: UNSURE (   7.47  )
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

On 11/24/25 10:25 AM, Mohd Ayaan Anwar wrote:
> Add the additional 0.9V regulator for the Qualcomm SerDes PHY.
> 
> Fixes: 71ee90ed1756 ("arm64: dts: qcom: lemans-evk: Enable 2.5G Ethernet interface")
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
