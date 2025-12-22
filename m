Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5B4AE6748D
	for <linux-phy@archiver.kernel.org>; Mon, 22 Dec 2025 10:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M6RZc9cMre7Zeg7uKMxdUfc9K7PviP/Rijf4geRDvVw=; b=4T0n5FnJuiXLVG
	N9r5zeKQAMQ6CnkOKKpVMakt8ZJe2T/cv+xNaagpZrF1lT1ORZJfU9m46/IShzWFL7GRpSlzK2K6/
	r9rNFq1xyFCJ4zCCDBhPSv2GNcfplrPQDOk7J6ZrrUfoBrzXW6jrM/X+f0e9ellTFmvtEIbOkMyaC
	4ymS8DdfeRkFKPrWiHbFk64QVn03ZANInF103A3F/0/MUsb4Zk1uEChKlF1ZWOEFsQcn24l+sGDdk
	XEiXb6ktDYPdxTxDiIZbSoPgPd84pizMHh/yuGYCT/MMvM5BmavlvVM1q8zZyWg+1gLq7LWU+mzcw
	fojjg4lCQlZpRmfm9ukA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXcvh-0000000DbW2-1iTJ;
	Mon, 22 Dec 2025 10:14:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXcvd-0000000DbVf-46Lc
	for linux-phy@lists.infradead.org;
	Mon, 22 Dec 2025 10:14:15 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM8EFHW3799601
	for <linux-phy@lists.infradead.org>; Mon, 22 Dec 2025 10:14:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3V9BlQkZLQipKWuaG8qu9blXB9mSR0ZfVvmqlvjHZJE=; b=EC9x/eFhqo3CQZ1/
	M+Mu6ztAmnwIKUed0FrzOWQe/tn4hgX0JrFpaz3BgZ2s5x/V+eaeBgHaIyjIbk4e
	eNlIjr/qgyGcvrAz1Lps6GqFKUqkEYAySpXncopbZWwi/DHrdZiGBQbOzTG1lDGq
	sBqvszwQcDfg+mScte6SeGjFER33g/fojAb1lj/jPdUfLPKrt68kKeHo4H5nyjcY
	ig/hlU3cPB8MW1p1tmwKhkHm61gXUcW0nw7z7rdYAM/oc0X3+jQNipUinjh4Rl2Q
	DikNUtTQeAgM9ez3lRNwKP0qBKehMwFshBf76hmj8okL2tSWXJ6+gV3PtiUYHPZ6
	3PrZLw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mry4k1t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Dec 2025 10:14:12 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f1e17aa706so20814311cf.2
        for <linux-phy@lists.infradead.org>; Mon, 22 Dec 2025 02:14:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766398452; x=1767003252; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3V9BlQkZLQipKWuaG8qu9blXB9mSR0ZfVvmqlvjHZJE=;
        b=THdwGmb2H/jAahc1O3XRg5gDbT3ykQ2k3t241cYdLqpwgsDtg84u1R12QuvYE05zlA
         X34Kk6C9I803sgw+JRY+36WUkRje2q7jc25LEkmXstTRzrEqUt64lKqDnv+sK5n4LHH5
         nKS7wJLLPpHp8EdlFDLDeQsroLJYV1mesQFRiotilm+JsTJMPC10/dKJuQeC2pfUwoby
         d+MfxILhZD5pdZjD1EKKnvcxdXqutItuioDQ4ycodZVTBQcz39X0z9VkR5HqdW7noqDH
         4phgRL2dk2JvX/uvukJCx0IhYUsfiNrkNoZ6kqafFRtdqXhV2vQP8Sol8cOBHar9mL5N
         tpAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766398452; x=1767003252;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3V9BlQkZLQipKWuaG8qu9blXB9mSR0ZfVvmqlvjHZJE=;
        b=ve5EUXDWgkVP5/7HvPMFW5zK+B36LG+HsFa5tEKQ/zTY1cs3ZsFIb3CnZ6w7pXagZ7
         0S6en9wnqYwqflNwHJ7HHcqskIshjbYQ9Z5kWhvJtcly3SHfRKB/LsOypJFGYejAH09q
         BMWOTmCL7gqtVlkz537M0CDQ6oUuEAvqe/SjmfyKezyo5NHpRplnQzQUdvA6dSQxvQXk
         DHVfcPBU5YGRT+towDyGSwQZIcRS/q6yBoLoAdeRBxjDW+TNlFt01ESrtUNZuMXTc8Ri
         8kmVYSrd74uuY9YQT9FhPSKSTLPCHuEKN5KZDJN/s5XM9CPoGi5SrHCBQ9t0j1zM/uM8
         MYrw==
X-Forwarded-Encrypted: i=1; AJvYcCWLsU97a2K1Og+YsUD8FK8+r/5IgA/5QvgILsN6VvNtoaiiC/tCaU9A2vKSPguxpYxPzr9MPGjeZ5M=@lists.infradead.org
X-Gm-Message-State: AOJu0YyaZkn3QHKB+reUo8olxfktWWyG3+8NCtocX7Lu0Gw4kFAAmH6A
	guswDAyTMN3NDo7KhvW/zx6aoiaMfL4bN/Ovuvv7+SyvvKxog2DgGqEKfd1qzLB1f+PRbsfZvbt
	rBGEjLp2MOSYUgb0amXPQqBlPJnZnXyKSJpdnJp2OhoyUAkFYOTPqu1EjmudNP4Dse8DB
X-Gm-Gg: AY/fxX6X2hSvfwVG9IF8hLMMOheLcPmEf36cdc11lWniCd1IQV7MUHmSeDLYttjTkng
	L25v0ZGYwJ43K3HAB4v912rjdCW5PPtholDL9bvoNqoBoChdMILRYlxLXCPiePdIMJQ9W5sx+c2
	wtAEeVkwGa9UTTLG0K48Ue1PoU8C6IJzEq7cBCIyq+k9GQfLNxGwkYiX4QQAOgTODU7Df89IHEi
	ENX4BzOBRxotoaEAXnlQxD6j6jFL/M3H47i9mc9ddHptbigfFFUnFcMEtS57pfNRGQrQkd82wzo
	oLAbaBBuDofbpQS9mGzIJOGJR597MGzSRWddeOeJzwNQaQh/NgG3gnJzrgtpbgjZIZv0ABinhMX
	FqWGazEPK63v/N+fNwRg5B94KrrRjonC1qRontTkHaZbNB6POtdgIYBrTYMay5Lq3HQ==
X-Received: by 2002:ac8:7c49:0:b0:4ed:b409:ca27 with SMTP id d75a77b69052e-4f4abde36bemr116179891cf.10.1766398452453;
        Mon, 22 Dec 2025 02:14:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGpUW/VkwoTMh2B420Zn5LwR/JNf5B3JEYqbroYu1Ar5nKTjpDAYc/M+WvypJlROlgMf697dQ==
X-Received: by 2002:ac8:7c49:0:b0:4ed:b409:ca27 with SMTP id d75a77b69052e-4f4abde36bemr116179621cf.10.1766398451958;
        Mon, 22 Dec 2025 02:14:11 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037de1421sm1051847666b.41.2025.12.22.02.14.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 02:14:11 -0800 (PST)
Message-ID: <e9c484b3-5c4d-4013-9d62-83b3c7c61ff0@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 11:14:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater
 tuning parameters
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
 <20251219173108.2119296-4-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251219173108.2119296-4-krishna.kurapati@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=cbbfb3DM c=1 sm=1 tr=0 ts=694919f4 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=TQMmuo1XrLmmHmFwc4MA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA5MiBTYWx0ZWRfXzXWtW/LXgNV5
 ypOZg4V6WC+2fNDblDHnyLk1gXSgFyfhhRpGcZ/Z1lEVbF2652g7n19rG3TR87tMJavtWt92MN6
 pJjFM35CkCbpmlH2y8gl8YDCNhlltCw79sGLuSRl37cfcdRrJmxmgg3MC2pvKu3EQ18ePzyjmOh
 TIsGQYimDFpjYN27FhE/6SLdVeUSzxJZ8PWAZAL0NVAVaxbMBjYPgL9KhBjAMZDNsj7ZE/6I6BM
 nb3BuHSqrHmsxviMgqLXtATC9V3o2/WuB4BcgT65Xyk7sJXjcrgFe3Fv+HuJfB4ryTb+jpMX0CH
 gz1qlC2FIfoP0j+wl2z8vKJSeelb7PGn8lhLaBOHEkj92ZoB4t96+IAtrnpQeMgvpEPyB0Ak2K/
 lefQ7OEXgq1beqQUf/CKCOyHMe7oQoQiAShMC4cvn5yB227Vs7nHh1psF70sTg/hKpEj3KJh948
 ebF8YpozxE4zpuh6oIQ==
X-Proofpoint-GUID: RKjr9p-8tZiV6K9Ji81N2__EHgV22J9N
X-Proofpoint-ORIG-GUID: RKjr9p-8tZiV6K9Ji81N2__EHgV22J9N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_021414_310504_E175858F 
X-CRM114-Status: UNSURE (   8.45  )
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

On 12/19/25 6:31 PM, Krishna Kurapati wrote:
> Add eusb2 repeater tuning parameters for MTP platform.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

I don't see this override in the random downstream tag I opened,
but I assume you're adding this for a reason

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
