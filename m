Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D85B8D6DDEA
	for <linux-phy@archiver.kernel.org>; Fri, 15 Nov 2024 09:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+X66rRvMoCVEF+3JdDb0ZUA41d3rwnGWdGkzRw1YP24=; b=V45oN+mtTTaqfT
	HGmHO8qB+4tDctqMFPvRRj5+G0+UFkzjDrhg4xoAJPiK+UkPV274+nkHmRtPoSY05Ofe6Xe3ie19c
	JkVBGC4eNDr1NummK2Pu+O/pdfC+l2sbB4BwUBclvAWxHIAaN5dnqtdInOqdfUrewYTGD6lXXfz8T
	g2KONWBAIPmpmaUgqUu8C37cHaxvRVP9Zcrevh9UiOC16D19FcRkuWfjuilXJsSBTOqXOZyT/wEuK
	bnDV6C2GgDHkvTW4ypDO9611m5hRqe1aXY/X0SrIgVUOWugPDgJhPz62tS+N/yeKAeK4bgG3xMkSg
	jAgG10KK+TdaoTZZZmrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBseI-00000002CHM-0Eh9;
	Fri, 15 Nov 2024 09:29:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBseF-00000002CGp-1coi
	for linux-phy@lists.infradead.org;
	Fri, 15 Nov 2024 09:29:52 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AF848WX000320
	for <linux-phy@lists.infradead.org>; Fri, 15 Nov 2024 09:29:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LRHknoPsbe6evKngpi5ETRwDISaYc4zV2stJIhrntjA=; b=pUi41dl3jqmaJKhe
	43DYdcPjjN1CgQkiamqK+pLIzqh0w28DV4/tmzBplW5Xp9GxBMEk8X8RYD4vfe1x
	PkBrv2FcP63HjjzIChgxWKlM0lD9RamzB4Bn9BbUEzMFapMEORrChZd5wCdZGvtf
	3Z2cvvnY2KF+jH/Azr6hGT/v1gW2qEOveOJ1QXk4ds5kJdPZLkxuGAEWRG/6MzXw
	dRFalRvWTLDU8HxNHwW1YI9pdq4nMkO44u9mcsD/u4P3PpUlvi2wmu11cc/6niIm
	RQoWB8c6NVGU4TAFfjKHSTE43IbQTuD/3gBcQtw6AKIRdyLvbcjFZt60HZ46nRYY
	0gAY9A==
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com [209.85.166.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42wjqajv6q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 15 Nov 2024 09:29:49 +0000 (GMT)
Received: by mail-io1-f69.google.com with SMTP id ca18e2360f4ac-83abbe0a16dso34574639f.2
        for <linux-phy@lists.infradead.org>; Fri, 15 Nov 2024 01:29:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731662989; x=1732267789;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LRHknoPsbe6evKngpi5ETRwDISaYc4zV2stJIhrntjA=;
        b=hifvBNdqWzmnsWf0kpVzpkoEeityVozNZT3DCjV4ELXYo33qVcku0Diu7+UjiCWuma
         0zGkYT0F13/mt0uB6Sr54JJWK4hHOryalfZAiB+jUUKnIW7dNCYPmjPfnl2SH7/tWPei
         UVIMoBC/QtXQwyhfhRIbe8oX73JuJDEsiOqXxdcDbu1oUxvyLgrpriaH5Zr6rxLj0rqv
         W7CzIk7o2s5qPF5APYGbxbc1wYadjjNVE9Aqde2KY/UE2bV8AfTU2TYt//C5O++1pu7z
         MElPlla/aZq04lRP9iDy0Oq6tCi2QK++e8sE0rE17kfjLDoEhANhIqmi+Ovh6sBBaFM3
         gQ4A==
X-Forwarded-Encrypted: i=1; AJvYcCVQuJOF9/pe3U1UZJ3ffZKqGSSgNQUd+nX4sbM2AkO1qRjz/ppo+MSUXhPwbpmYjqjwgejteKS6vag=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywrp+EUkyjIwnda/WO/MBaFkCRt+WN1nf+lqmlwX3CzWuYevZey
	Crz4mJic6k9ZX1ncTwxXkKnuNaXgqToOoWeF6IvFrpJBxw2DDEy5768UsWNfoh2Lt7Vk6c6gj5B
	kwdObU2HxjuilebPJk0OS5glVwQCVx7an15Dbj3Eyyl0DVDXHw60aFPLKA9W13P23
X-Received: by 2002:a05:6602:1684:b0:83a:abd1:6af2 with SMTP id ca18e2360f4ac-83e6c17c54emr62128839f.3.1731662988853;
        Fri, 15 Nov 2024 01:29:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH29I4bw5bnOpuIKz+9weVZfbmKQVczvtIhJBNOsApQf7VuhYEIDAZw5lf4xCwR3nEjOv0H9w==
X-Received: by 2002:a05:6602:1684:b0:83a:abd1:6af2 with SMTP id ca18e2360f4ac-83e6c17c54emr62127739f.3.1731662988407;
        Fri, 15 Nov 2024 01:29:48 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20dffd782sm162167066b.129.2024.11.15.01.29.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Nov 2024 01:29:47 -0800 (PST)
Message-ID: <eb511e4d-d5b2-4bde-8282-eadcd2eba018@oss.qualcomm.com>
Date: Fri, 15 Nov 2024 10:29:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/4] arm64: dts: qcom: qcs615: add UFS node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Xin Liu <quic_liuxin@quicinc.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, quic_jiegan@quicinc.com,
        quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com,
        quic_sayalil@quicinc.com
References: <20241017042300.872963-1-quic_liuxin@quicinc.com>
 <20241017042300.872963-4-quic_liuxin@quicinc.com>
 <5fe37609-ed58-4617-bd5f-90edc90f5d8b@oss.qualcomm.com>
 <28069114-9893-486b-a8d8-4c8b9ada1b0c@quicinc.com>
 <20241113092716.h3mabw4bzgc5gcha@thinkpad>
 <c0b3bd36-6ec0-4d7d-9a65-5b8f02cd6c98@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c0b3bd36-6ec0-4d7d-9a65-5b8f02cd6c98@oss.qualcomm.com>
X-Proofpoint-GUID: -ktR0zzRaicPSc3uX1aRURUI_eADQWhs
X-Proofpoint-ORIG-GUID: -ktR0zzRaicPSc3uX1aRURUI_eADQWhs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 adultscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501
 spamscore=0 mlxscore=0 mlxlogscore=892 bulkscore=0 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411150079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_012951_580341_426E46A5 
X-CRM114-Status: GOOD (  12.58  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTQuMTEuMjAyNCA0OjIwIFBNLCBLb25yYWQgRHliY2lvIHdyb3RlOgo+IE9uIDEzLjExLjIw
MjQgMTA6MjcgQU0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPj4gT24gV2VkLCBOb3Yg
MTMsIDIwMjQgYXQgMDU6MTk6NDlQTSArMDgwMCwgWGluIExpdSB3cm90ZToKPj4+Cj4+Pgo+Pj4g
5ZyoIDIwMjQvMTAvMjYgMzoyNCwgS29ucmFkIER5YmNpbyDlhpnpgZM6Cj4+Pj4gT24gMTcuMTAu
MjAyNCA2OjIyIEFNLCBYaW4gTGl1IHdyb3RlOgo+Pj4+PiBGcm9tOiBTYXlhbGkgTG9raGFuZGUg
PHF1aWNfc2F5YWxpbEBxdWljaW5jLmNvbT4JCj4+Pj4+IAkKPj4+Pj4gQWRkIHRoZSBVRlMgSG9z
dCBDb250cm9sbGVyIG5vZGUgYW5kIGl0cyBQSFkgZm9yIFFDUzYxNSBTb0MuCj4+Pj4+Cj4+Pj4+
IFNpZ25lZC1vZmYtYnk6IFNheWFsaSBMb2toYW5kZSA8cXVpY19zYXlhbGlsQHF1aWNpbmMuY29t
Pgo+Pj4+PiBDby1kZXZlbG9wZWQtYnk6IFhpbiBMaXUgPHF1aWNfbGl1eGluQHF1aWNpbmMuY29t
Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBYaW4gTGl1IDxxdWljX2xpdXhpbkBxdWljaW5jLmNvbT4K
Pj4+Pj4gLS0tCj4gCj4gWy4uLl0KPiAKPiAKPj4+Pj4gKwo+Pj4+PiArCQkJc3RhdHVzID0gImRp
c2FibGVkIjsKPj4+Pj4gKwkJfTsKPj4+Pj4gKwo+Pj4+PiArCQl1ZnNfbWVtX3BoeTogcGh5QDFk
ODcwMDAgewo+Pj4+PiArCQkJY29tcGF0aWJsZSA9ICJxY29tLHFjczYxNS1xbXAtdWZzLXBoeSIs
ICJxY29tLHNtNjExNS1xbXAtdWZzLXBoeSI7Cj4+Pj4+ICsJCQlyZWcgPSA8MHgwIDB4MDFkODcw
MDAgMHgwIDB4ZTAwPjsKPj4+Pgo+Pj4+IFRoaXMgcmVnaXN0ZXIgcmVnaW9uIGlzIGEgYml0IGxv
bmdlcgo+Pj4gSSBqdXN0IGNvbmZpcm1lZCBhZ2FpbiwgdGhlcmUncyBubyBwcm9ibGVtIGhlcmUu
Cj4gCj4gSSdkIGhhcHBlbiB0byBkaXNhZ3JlZSwgcGxlYXNlIG1ha2UgaXQgMHhlMTAtbG9uZwoK
SWdub3JlLCBJIHdhcyBsb29raW5nIGF0IHRoZSB3cm9uZyBTb0MuIFNvcnJ5LgoKS29ucmFkCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
