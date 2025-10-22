Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E7D9CCD195
	for <linux-phy@archiver.kernel.org>; Wed, 22 Oct 2025 09:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YHQaT2igCPhcJsJv5MLTMGQ7JCWt5nvCjeAZgz5fa0k=; b=Eb9iNyfzh2itsO
	cVeQZkgjQbSIAmx0AgGrbY/j0xAQYZpTd64Us7lvTQ39uCmSvTNG08TxzKrjcXZdWFWJ9C3aw+s3M
	m1TIZIrTNruEFn8XTfnzQfTsVcZa4/zGDAzmaZeWt0E5MDd76aGkHXbJ0Ro9Kycu4pHo4NkVIZ0gJ
	hrMlM7jMeC/LFLS0vEFyqfoc8YnhbsyRjfPDjrbzH+uKHmmsbgf69x36WbfIZTdtDoDe55FBxqgB7
	5OX2yTxsut5R+fcZW2kelGKKpqL7rsWdUAr0CE22OVv3vtXIluYX3pvKjy/6JoOeo8P0xWsBw9bOv
	HDsqc7X4SdTIR9PhjKpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBUnE-00000002Bxg-37B2;
	Wed, 22 Oct 2025 09:06:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBUnB-00000002BwW-3cMT
	for linux-phy@lists.infradead.org;
	Wed, 22 Oct 2025 09:06:03 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M8pLp5004699
	for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 09:06:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zyo+jA7QwjVcJeqaUFtT0d4w
	dZwzQCIBohN18VYyAbg=; b=Zu7BKZ+43PSstvQ6AhC1A+gwhtO0x5SE79t/NC/5
	obpD29SJ4I2jJWDySHm2vls2UlCgb9ZdorcmSUDEYMXgvHiBVJjnq2BnqsIHRoJi
	kqpIxhgtcs7wR073Gc2Adhtf2R/X4uoiRRAaUldep1diiFoSmunnw5yEpfHpmt1f
	YvTe200Musj7mEWH5gy3BnaeclV08maengPfBXYmIV7LzkmMoYilpdCSiU3ukLit
	KWg9xhjrXAwZQ0Atdz4jbtsVgVP06tRI9q4yghe+rzdSt8qcconlg32yFWvDg9g0
	JUZEou/qWi5A5+aWZK7955FLEIo9dVFcmbWca56LJQXL8g==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xkps9hqb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 09:06:01 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2904e9e0ef9so129464485ad.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 02:06:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761123960; x=1761728760;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zyo+jA7QwjVcJeqaUFtT0d4wdZwzQCIBohN18VYyAbg=;
        b=LSE8xuD0Ep9WK7PaGU0cY7oEcUDhPqRoWE6INXRLVIo/wugf01iGlHQWQxQRyBlqpk
         BSzw5VNLmx2Tx4ZSBJ5U0TVq/CEmlWOD4sx7HnYSxZXEC3AxQydzSTMoqjLyM/q3jG1c
         yGzINa8b4w/5ied/qwqtmIewpkym/jJ9bZoafr62e4NSQJej0OtuvL+0ghnr5xQo2jkq
         TB3QC+bdlvOV4tfRAdmGqkSwqFmiaGZG9rJf+bAGOr61XGLlCioueEn8SqRQKPSawG2U
         vqVxQRtPAQOBwFFareltd3L3/Ibv4MkF72HudxjdRgm8si/IxjpgpTuSxGaFfuoZ1k57
         mS+w==
X-Forwarded-Encrypted: i=1; AJvYcCWkb7Hb0lmtHPx5siNcaXOzXbGn8Uj003rQ0wV2pKxXYXjUOPo+L2kj48yHyzEAd7y+XfWhZmgMPYg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwbbQbCrXgw2kcA4sv2xIlVpiZjcVUnYU/2/oV5NEbDx3yFMDwa
	zWSCUAbsvkcjHjJawnzsF5LCD02p0BJVAvtaRZwH1I+93bdp9HTxSSJ3qJc+qOnakLBe5BTqvZQ
	QcyPuZGavMpdTRy/aZXHggrRLGo4kDc3+GreJKWY8mvwPsa0RMd/L1PslWEMfdXR8O4/M
X-Gm-Gg: ASbGnct5DfLPacoDv38xPfpcbgWEGdq49vW0AvZopXb4tJe2wjvHUAvPYiTMwV5xDIc
	/NXzvWKiLiadfwun8Ie2UW2AK/+OjXaNw4LfursrcB/hWc4YeESBHIgwzO6c+4d1LFw+Des/+EI
	VC2eyo3URXKNRQe1dZHVK45ZZ6jSYWt9CCRHHB+ayGhQ8hIh2A+/6rPBXG2VSbIraDSpz8mFis5
	TcZ1mSnNVfmHtKgGNW1IVhOrZsvi3Huh5j1rffOYvbocVFuZ8PX+bG3/ELSha7ewA+ho7lkinnt
	0IuC/Yi/mp73K1LowPpylJZLuE5F0nkORmpNSwqZeGIMozi4MZp8Lcdp04Nn390z34ubH4UeguV
	wIQGewcfrdHr49KkQWkvPPNTHSl9B8pUc+NN9Bbrl+bzHAw==
X-Received: by 2002:a17:902:da90:b0:258:9d26:1860 with SMTP id d9443c01a7336-290cb27ec6emr288713285ad.40.1761123960524;
        Wed, 22 Oct 2025 02:06:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGn7MtRv1ZaaGZs0um744eTrCze2LKDcbAPooB3tr0+4yM3N/aBwX8RbAaQaUb34hQLAc+mNw==
X-Received: by 2002:a17:902:da90:b0:258:9d26:1860 with SMTP id d9443c01a7336-290cb27ec6emr288712705ad.40.1761123959960;
        Wed, 22 Oct 2025 02:05:59 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29246fd7675sm133137885ad.26.2025.10.22.02.05.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 02:05:59 -0700 (PDT)
Date: Wed, 22 Oct 2025 02:05:57 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Qiang Yu <quic_qianyu@quicinc.com>
Subject: Re: [PATCH v5 2/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the Glymur QMP PCIe Gen4 2-lane PHY
Message-ID: <aPiedUYhUhPe319h@hu-qianyu-lv.qualcomm.com>
References: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
 <20251017-glymur_pcie-v5-2-82d0c4bd402b@oss.qualcomm.com>
 <f5ae0d20-3282-4386-b5dd-aa55142d2b7c@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f5ae0d20-3282-4386-b5dd-aa55142d2b7c@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE5MCBTYWx0ZWRfX0cEbgDg/X5u6
 Ugq0Ksgl5BlaDqaxR2XfthNOh59kUtFQUmnnKv2u4SZYnmkqjq0xkKshuDUraGnXGfIfj0vDBSp
 OJ/BxQY9ItGWmSejetkdWapf+70Qo0kZwpdBnDnU6WeMSfnxejRXcaVscVVmGLWf1pb+4JhUftE
 Kom2bzc6kTCI4OnCfaBY1ILvHqWEp0I3SPi6KEwWvZF8EBwha1lIDCRYWk4O18hpncguue0Cjx7
 agkzebDAFb/zjK6cT+H9HrtRo9drB5Ip/f3EgcR+MDbBSII9gyll9sX3MdLD5+je6WaJvjtIDqL
 wwZnslC6EWIkA82ejFM+W8yK3jShwv8DebedkvGq2uNU5ksXY3cDKmRVrx79J3TlTFGzSUPW/Xa
 bT8ZZZ5qd08ZdLlj0xpSkeUnN20q7g==
X-Authority-Analysis: v=2.4 cv=FbM6BZ+6 c=1 sm=1 tr=0 ts=68f89e79 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=azfrWeaavPrKhEuwe18A:9 a=CjuIK1q_8ugA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: gN2xB3fRc3QYvI5wAdcoPgAC6493Goz8
X-Proofpoint-ORIG-GUID: gN2xB3fRc3QYvI5wAdcoPgAC6493Goz8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 spamscore=0 impostorscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510210190
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_020602_009858_1EA48874 
X-CRM114-Status: GOOD (  13.13  )
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

On Tue, Oct 21, 2025 at 09:04:10AM +0200, Krzysztof Kozlowski wrote:
> On 18/10/2025 03:33, Qiang Yu wrote:
> > From: Qiang Yu <quic_qianyu@quicinc.com>
> > 
> > The 4th and 6th PCIe instances on Glymur have Gen4 2-lane PHY. Document it
> > as a separate compatible.
> NAK,
> 
> Why are you duplicating Abel's patches?

Please ignore Gen4x2 patch. When I testd PCIe 4 and 6, I missed Abel's
patches when I tested some dts changes for them.

- Qiang Yu
> 
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
