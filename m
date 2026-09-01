Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF609C61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 13:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gv4jKQ7dkCLgn8XFOsuewAUUnkqkgUNDNjj7z7qfj4U=; b=SeUdFyW8UCaKSL
	lhyyEkxD+TGB+eR8iv2MoFgkllheJKxjl8DzVa/T+4sXaKWvZ/BCM2VKMm29vyDYngZl5Y4bP+FhX
	2wh+ShV5fJpqy0qNOYCEdg25yD5DJk7bME+YOCNIyLkX024W1i2k6hMNs6Loy4utBQGdLMX14lvCi
	t7UruWdMCXedMfngzheG99Q8rSnU801fUJZaGunq7vCN50ELO575kwX89Z3l+N9Ty+8QhFeQ17Wo1
	SU7P+XFn+3HdyPFjOZfQ2guLTwot5TWYy/dwsraqFb0zysuzUK+CmKh5EJmr4hNpgd3vJZoZIr71F
	jFy+V90/TGleVZpmcnyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OTU-0000000CDDg-2JUh;
	Tue, 01 Sep 2026 13:24:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OTR-0000000CDDN-1wdP
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 13:24:26 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 681AJJ7w2241828
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 13:24:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fK4hoq5TQDS3XikMTWs0aodegmSjlooccPriMdi6b7Y=; b=BtpLlFVCVUNzxEYI
	HgGZSJSdQOf5ayDt5hq+IOANbHz0Vn6pG9Vsq58d1AfZTSZiqYiuXyxygNGE3xQc
	lA+79Bw+n5jXcB4yipulo8IYpZfBSTTw5zcwqGhVdakj/DX98Vmiu3d4z+qO9kE+
	x2c/SHpr99RlfuLqxuZUCu9rWkkT4kUgd5+u8tfe7G8Jk7t4aWsPvApx3vW45Xba
	9Xv6iwLE5NUZrhOx52WIGQP0d785Wi7YfJStxsLwNoV5dJrJ6hQXKy1dYCU1dKLV
	dsx8pCQek6g1+g5gTB2F1gYPp65Rx0zxpVzPtIQxRzQego/2TRvjdA4SCH93liR7
	ESgwog==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdvmm0r8w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 13:24:24 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-7570225606dso117974137.3
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 06:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788269064; x=1788873864; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fK4hoq5TQDS3XikMTWs0aodegmSjlooccPriMdi6b7Y=;
        b=NatWpHZIlggOKrWn7vAkbo5shdr3NymCyMizoZb+Ts/cAMpYlIzhZ99GcrDDkL9tWl
         Jsj3WrwDUfSKe+mvKBUq5bjS7ZGbdDfH2WPJ3LqhxeoidV2UEEaj8kc245gXqAlpnoCc
         au/UQ1YolnKg5g37/jg+UKNaJ49wA9HrgIq8yckS8/xuNAbKyuTX9bc0iBnMd7UjJM4K
         cO46cKB1J2/NMK5U5pa3eEIa21U8GDZNoqBOlt1snYEVMFmL+tDF4lxKCELiL0ViSL13
         0IPH5ReSAp5X6CapKONbW3uabT3YKrAB+Z41flsL3XSKXYD/PmBYb3hNpulhdU7fmocs
         35Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788269064; x=1788873864;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fK4hoq5TQDS3XikMTWs0aodegmSjlooccPriMdi6b7Y=;
        b=kaWc4JCcFEFAcKKCRXBEbdrRkHtr6lRfHh6OtLPtb8tmwLMTwv9P/pNMD8/nJR//8g
         fu5fRdIW+GCZuGr03Gxb46LnGpWVakkR8ejFbaBroE04GEdf43DV/+oZbYiPpF+7qnqG
         dicbS+9StoKiKdil0s/YnHEZtXLsxLSiSY88Gsdf5Falz2yDz8Uh8No2GuIYaApKnneH
         ozGQNJdUrrJ0f8xXSAYTY/1N+ZmeMUDp1cwsEP8nMQVWQFUZRdKm6HG7bKe+fOVIVL0i
         2L4pvjwBDTVV8Cl4oG9RjZOZUJa2nXV2wxqssYibf6sOI+Ga12jrjE4/rdJCIsttFhGE
         m97Q==
X-Forwarded-Encrypted: i=1; AHgh+RrQKE42ODRHs7XMfb2Bl49VMalAAr/TaIHhpKBJn/suJCz11d/he41lCP41NiTUESybNsAKMyfeGik=@lists.infradead.org
X-Gm-Message-State: AFuF++kVy5cI9KDXva2ty5jLlFYRXG8AnpKQICIcAfI++qgANg4kKExn
	ZomIUspuX+FPgFPPo13WJ5iZxgQD5p3pzlL5/JXZGWsh6qvJdibQx7jqiS2nxyUozjJNTlwlgPw
	r1mvAcp6MKRI3YvtbKwIZcUVLkwkHH7xzYn2LGw2HBwTJ9dRW0ZksjFnavH8fmTKpEk/V
X-Gm-Gg: AR+sD101YMXJ84tH00Px+eGzd+cx3mknZkdksPzoI+HBNQTNu+Jt7bJol+MoP39uE+O
	CTWPD31f4Cj0gO2tt+JrhiM1kJqDg0fWxg3V9X/Zy3wInOOIvuasCPHlZ5D1lHZqpveLLN7Q0UO
	mOibDlRUEssZI93QNaKqr5pdLgo5NdwlojvqhmGTZICqXiofceKsVb2hvbUHWIkSQytdSi95rBJ
	XHr37Np5dhqJoxFCtvrMFpa4TCEICt6d9Fg/hPo8ACkjsvR2eTdcU88lptbnjukXWAtjfJZwKJI
	ShrRhM1j2QtdSYjoxgV03VoyLFscliDEUJf812DxqQ+DHokiWFSK5VGBHycDilEY5qSKiN78je2
	KUpWtCS/jDT2C+PBWKjJD9Q==
X-Received: by 2002:a05:6102:f84:b0:779:7d3b:1398 with SMTP id ada2fe7eead31-78593425615mr4431825137.0.1788269063554;
        Tue, 01 Sep 2026 06:24:23 -0700 (PDT)
X-Received: by 2002:a05:6102:f84:b0:779:7d3b:1398 with SMTP id ada2fe7eead31-78593425615mr4431799137.0.1788269062980;
        Tue, 01 Sep 2026 06:24:22 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b5e89c5a53sm2874355e87.8.2026.09.01.06.24.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2026 06:24:22 -0700 (PDT)
Message-ID: <3c34164f-08cb-4e33-af8d-c5d19012a1ff@oss.qualcomm.com>
Date: Tue, 1 Sep 2026 15:24:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/12] arm64: dts: qcom: ipq5018: Enable USB
 Super-Speed PHY
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <praveenkumar.i@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
 <20260825-ipq5018-usb3-v3-12-39be0955a6aa@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260825-ipq5018-usb3-v3-12-39be0955a6aa@outlook.com>
X-Proofpoint-ORIG-GUID: atYBSZJv1mJaQwGodIoM4j9POudQVwvM
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfX+xI96n3yQToU
 bWS4wbImywyyS/FhgC8yiohySf/S5Q9Y8GhlN4i4fGAMGfwDBn9EH9vR3lhFl6674bzXz9Nqhfb
 8BX2MH9J0tFYlAP/moIFUyHmHjAPVag=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfX0LWpCwfc+9dk
 /omTr4DbJi4iWy2KofwaJQU19Mcf406icMCvb7QKXQNTsj9668kCizzLbWdKRPvL2k5hAxOQnra
 ngFnCLCRdfCKG2tI4VtXEkx+YgtjxDC86qpOUILURwKZLIXdmqOf1br6MpZQqDO5X1AxWM7hcBM
 +tlx/RnMHVVLmflpp27dNE701f0J0bMF/wGiwJGxVG/o6J5FUsoOF0kmKY3JEqJn7+Lu5jOncCy
 vP6tpBJ+/MSxvvSMRnShQMc27BkBVAGcQBjSbeFT6gDrqwEJULpBLmWVujXX8fu+XTHKFFiZAW/
 YPZlnYJOkcKeqEDNJMuSJAcwky0PaOZGrF62/vxHBL1FeYpj9CaBsJCxz7vmN39ZrAOL/epeFKc
 IVd+1wStxC802exVhAitXl0nymc+0hwMp7pL1oCet/TJdNDBiFfJVkQEttHgJfOyed7RSz5UUJU
 lXpslsKk3/adSX+95iw==
X-Proofpoint-GUID: atYBSZJv1mJaQwGodIoM4j9POudQVwvM
X-Authority-Analysis: v=2.4 cv=GfwnWwXL c=1 sm=1 tr=0 ts=6a96d208 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=UqCG9HQmAAAA:8 a=_thwKDryVKp783wjlzwA:9 a=QEXdDO2ut3YA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_03,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 phishscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609010117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_062425_951101_298E068B 
X-CRM114-Status: UNSURE (   9.52  )
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

On 8/25/26 2:37 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Add the 5V supply regulator and enable USB Super-Speed PHY support.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

subject:

arm64: dts: qcom: ipq5018-rdp432-c2: ...

please

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
