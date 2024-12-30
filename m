Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EBDCE77188
	for <linux-phy@archiver.kernel.org>; Mon, 30 Dec 2024 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5VcHnlsxIlOWKFgNiWORPTotsXGb39m45/pWlFWnz5s=; b=HFl8qiiOF9QxIA
	qLtOPH+1QBj1hi3nPweUqKJ+hzHig2hhe1g1yAKRM98kRaptWhQHfvz84q2QvUMAm/qfF0PORyw9U
	X90v5QHicZPBpe3+oGd8/oMt/KKoyqMqbrg2QgFVcetdW5jsApmyCf5LmIcBcZbB2wB/cnWire/gk
	A/qxhEl+Me+DCXXe9BZMTE6UCSsT3KweQQEp4M/v5r2mU/a3W989WoRu2aQWxW8n8Ii+SYhCIyA/m
	ds11l/5YiUABCY4md7VymTyPcpZmtGFRPH7D89GHHbkg2Ufe8YjtQFOTwq2DVRbP73TjrCtWOBpjv
	trpB2zdqqJvrgHYtDt7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSHLd-00000005PYT-17Qc;
	Mon, 30 Dec 2024 15:06:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSHLa-00000005PXy-2Yr0
	for linux-phy@lists.infradead.org;
	Mon, 30 Dec 2024 15:06:23 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BU67o6W022980
	for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 15:06:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uysLAB4kIbOi62HACEt8X95euE254gr1EcZr73msbi8=; b=nnyF1cUI+dAMaILh
	iGdy87BuisoCaiWsOVB6I87ZJMCXqSt4UyzDdytbqB+8XafSQg1WyhnJtb0MZreh
	ac3NnBCZm9LOW1iNk/70VM3Ma2kkC17quuh4BDfKOyWQQ5xfQohBa7RzCJhWcRgm
	/W2DRpML3l57OVUwmMSIhI2Bfl5M58F8di17FmoOTAUOD/TfmA9RMHacyupmsTzz
	3zxKc8CAVS7GN8NYrxbocZtR82v7+CVdwNh417DSLmsmyy3DwyXxRTeiMPvnbi1o
	8Bx1uZn5a7/jLdUX3C/ZwjQrNPTLOq9xQL8LAC8ofdLoVKwLqXXM7uRy3dTvKErm
	yQRXyQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43unys12xs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 15:06:21 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b6e5c3a933so130260685a.3
        for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 07:06:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735571180; x=1736175980;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uysLAB4kIbOi62HACEt8X95euE254gr1EcZr73msbi8=;
        b=BCfk0O7BCQG9bpdFAKsSZ1KjmBxNUYKkWd5Qm+xX3UVGo5JfI7weDMDkPxaFzULVWY
         Q0LNOsIjqNMwUS8eHvRPtwGgPT/bAW/LaodTjYcG8IGBUBzWbHt5icahjvoijAdVyfej
         V3cDSVW3tODHDGcB2XKUVdcxWhU0qjceVbKkMlM18/1Wx3F54EWzXtRivF9s4HB1P9UI
         FzNkFWzFDAVf/BKQw0m4QwbPL0Py6ZiPKs+HSuI8FQEISkU6DMXApXyGgmx3nx5srMQN
         AjiAyHIifVvC3lhKEk7aIpHi7bhHLFVZsOn18GDHlzJ10Srjz/skmjmsipSC6XLik6O4
         AAxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnfv1jTRb8NrdmhG48OwZAno6twaRMFAxyeCgVn6UIAxvoQn0xffW+XSSX8FCBITUEYq62H/nl8dY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxnVJKjSJrrUDkJM5YQOrc4WCxtEa0W3Ar4DNCe2XrxoOOHLDcZ
	U8ASlR0M2LM2IXEmEp+IvZgH1iMs8Pa2VEQ7v3o+nbfOBmwlfXCZWjzmeepfYPwwgSKxUdd26YN
	7UOluHW9PBLgMNN+nBWnC9hEQADWXVGM0qMa9jTbSUh46bPfjuWr1w01EBYaCn812
X-Gm-Gg: ASbGncsU21a34PY7fD8QRqG3mISUp9gXc12DP7JA/bOA4zkWDXtYpEhqM4Lv2POhKp/
	xHGH0cUTaaCEo8vA/HqnYHq9Ja826h4a2VRtUrNYNxNCscuCBC7kYim/ES+tgjR24f1idQQrLs4
	BwNw4RXkSG8/QakxhXEzrPBoHQzofJRpblsZQhdcjL+MSNJaf7+NnqT1vVEWuO9u9cTFA0UH0RZ
	SWclQc0lkAA+hGg1Ahztbs+f2EagnF545kpWAGaRG8sgeJus5xcGkB9M3Mx4fMcmWABW/X8smP/
	HT7bvDirTfrvfald+j5mzq+vDV3uo7XKUQE=
X-Received: by 2002:a05:620a:8806:b0:7a9:bd93:ac0e with SMTP id af79cd13be357-7b9ba757033mr2202890285a.8.1735571179823;
        Mon, 30 Dec 2024 07:06:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGQa8kYJJdyOArVpHbym2A4jB7jAdPnezroVmJ0WtNlVtB3JleiUGwiEV/ej6VnyJpOsZf1Yg==
X-Received: by 2002:a05:620a:8806:b0:7a9:bd93:ac0e with SMTP id af79cd13be357-7b9ba757033mr2202887585a.8.1735571179405;
        Mon, 30 Dec 2024 07:06:19 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80678c8dbsm14771746a12.40.2024.12.30.07.06.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 07:06:18 -0800 (PST)
Message-ID: <ec69f87d-1161-420d-bca9-d3314a3a1a23@oss.qualcomm.com>
Date: Mon, 30 Dec 2024 16:06:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: ipq5332-rdp441: Enable PCIe phys
 and controllers
To: Varadarajan Narayanan <quic_varada@quicinc.com>, lpieralisi@kernel.org,
        kw@linux.com, manivannan.sadhasivam@linaro.org, robh@kernel.org,
        bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, p.zabel@pengutronix.de,
        dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Cc: Praveenkumar I <quic_ipkumar@quicinc.com>
References: <20241226102432.3193366-1-quic_varada@quicinc.com>
 <20241226102432.3193366-6-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241226102432.3193366-6-quic_varada@quicinc.com>
X-Proofpoint-GUID: P4LIj4_b1MW0miKfz4irS8jkEya-H08U
X-Proofpoint-ORIG-GUID: P4LIj4_b1MW0miKfz4irS8jkEya-H08U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxlogscore=699
 malwarescore=0 suspectscore=0 adultscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412300131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_070622_769092_A3577DF2 
X-CRM114-Status: UNSURE (   9.83  )
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

On 26.12.2024 11:24 AM, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Enable the PCIe controller and PHY nodes for RDP 441.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
