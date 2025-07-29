Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE230C87FC9
	for <linux-phy@archiver.kernel.org>; Tue, 29 Jul 2025 13:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9E3Mym9oheSgeKDohDMCPdTcSl+9JUrBojevvWJljPM=; b=AmmWqsikV/5hLQ
	FUxGhcpzNiy42YnFlHWVFCEXm4StxDA3AWb0cOC2qNRRalFrlyD9AigOaFgfiaT/iSXGVQJYMCJKs
	5McgVe/xFhmS72S7931alBbB6zIzeIwcVJZehnz0Y2C7WeSe1QaT3JcRkDV50cNBdoKilJCXtdAat
	vDiYid7lYvwBFbg2ppjHsbX7Xgzt67zTgAfo3D5YUcW1LusZUM1aEgHQ67WailkXobKo5JWJMoK4w
	z95R0nzvWbAFerhQKeNA2WN1l6JSIKIdmB/OE31isSud24BNVijVhPUrJqgypOKBnI6PPCOh+x3Ek
	eJiBa5Ozt+mv4WkYstEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugkRc-0000000Gof3-1jfv;
	Tue, 29 Jul 2025 13:32:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugkRa-0000000Goej-3KpB
	for linux-phy@lists.infradead.org;
	Tue, 29 Jul 2025 13:32:39 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56T8WRd1005231
	for <linux-phy@lists.infradead.org>; Tue, 29 Jul 2025 13:32:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jM+V99Ir0I4XA3k8O6hCYfIKJXhqtYGbn0EBhNXPZOU=; b=TaCvraAQDvDry/Q6
	kTfpgjYD/P7HKtjUt+4z87gF0bV9VVsUZ8FCMNFQTgWwPkIpsHjVnZLfZaZtivnu
	RXE8oTxJm5wioaO3pwUBUAUWFA0bvB1bmM3xmOO3/b5Ho+w+zsarLPUl2rew3WrG
	EfVc2YQD37k8uo8mPkwK7z4O3iwDcEgZ7GRT8/jinb5zMP46vRzmA8nrtLR9swbH
	ZjhhaL3nX+WBNenF8+6k+3X8dN3KBRu7gW5COqviUNBj8fcFxZY+s/twNc2mTels
	VmZ6TBmsW1D49CCIq//epE938ohQEXhDezDk10wAjRbe/yIokqnGC7/XgyI6YEbM
	79WJkg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484nyu0gcu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 29 Jul 2025 13:32:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e33e133f42so114573385a.3
        for <linux-phy@lists.infradead.org>; Tue, 29 Jul 2025 06:32:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753795957; x=1754400757;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jM+V99Ir0I4XA3k8O6hCYfIKJXhqtYGbn0EBhNXPZOU=;
        b=FeMM1CynGKwClUjLx7fEMiuoGOdyWJSHNhYdd4cGHDQt+llLissYSRbQM10qE2+x/B
         r8HYIiVHm68jkXnrl5j6B9EwGXGF5+YUaRecJuzbs1/88I/OP6b6fkjY+9Y+bd1BJi5m
         t8ysbDNaagA5g+xlbtIidbSmolP2M7vAjanDCLctVvapot20B36JyuhSBzf/6BAwS4KQ
         aFeyk5LH5G3gH5qEwe21R05aUL59FEfcS/gceRxIgTdg3v+Vwd6Ugrcv89/4gWhdO8La
         aHEuC22/ypEPk621iufC367u1rC0AwIKkIg6qotWUFpeJDQc8j1Xou5qB3iYxXMNxeqS
         Geow==
X-Forwarded-Encrypted: i=1; AJvYcCWph5uxIA77g7E+ooLW5mESs50bezkNLQQ2VZhF4h29gEsvhiYHB0VZ28AP7Tnsk1GhB+OoLV5oVgg=@lists.infradead.org
X-Gm-Message-State: AOJu0YweGA8MgSRhbUPlV6ULZeVGa/pWZSR1Dk6OrDX+gJq5nwe8dTGW
	+WKsUIiHfwQAKQHNcc1ResIPCrMLe/VRluf8KpWPBwVDKITTvSfv1Buo2MUn+kh8o3C9SdIL+58
	uh44ESUkcAlibX7q8MYby+O35fmKWBbSKyffbHqV7yfkkZepO7HsXYs/MQeiHdgIUobdo
X-Gm-Gg: ASbGncv+csSdBgP8cT0BVm5uSMD3guu8PJW8uiOLRfUa6ZdYZgrh9keDeY7s3ZYtKbz
	vK7FOoci5vJGtkIYPp+cE1tyvXTvDHXFXcxE37lx6uHKk1f49KJXEGJbKHJJaFdpyUuO2XPcDKc
	jBH1sWoaN6aB6qCj//zSKEs2p92siqESrsjvO/WMLjWhwFhl77j3ZSCzeiellbd/Ez/3fX4RKug
	Ht/26GLDdGM1x9X2zforQxatvuNYMkWNkfu3QqVSt/aFJNQTNVU1sOnxc1apwOW6EWZF/yXvpnB
	8OlebAa4G5cyPeiLU8ZdVhIDjiu1bFoqk880+3i1sVzwxojV+YXmTwC/UwDx9lxwVSZWEDcT5U/
	j9hUxckWLJxAkRAyAAA==
X-Received: by 2002:a05:620a:40cb:b0:7e6:3c4f:fff with SMTP id af79cd13be357-7e66d4b1af0mr1041085a.3.1753795956704;
        Tue, 29 Jul 2025 06:32:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGAOzJT3QZrBy02ECSykHzkvGf3IwWCyjkvsQ1hFqKmBvEZUJqnoAyRjkdmzAO0gfMk6N25A==
X-Received: by 2002:a05:620a:40cb:b0:7e6:3c4f:fff with SMTP id af79cd13be357-7e66d4b1af0mr1036885a.3.1753795956019;
        Tue, 29 Jul 2025 06:32:36 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635adb093sm590411066b.124.2025.07.29.06.32.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jul 2025 06:32:35 -0700 (PDT)
Message-ID: <39be83ee-9aa3-4c87-b76b-b6dcaf50a239@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 15:32:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/3] arm64: dts: qcom: sa8775p: remove aux clock from
 pcie phy
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
        lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
        johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250725102231.3608298-1-ziyue.zhang@oss.qualcomm.com>
 <20250725102231.3608298-3-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250725102231.3608298-3-ziyue.zhang@oss.qualcomm.com>
X-Proofpoint-GUID: fZTmZilZDgRjryKJ_IQ-5IPkEQ63Helu
X-Proofpoint-ORIG-GUID: fZTmZilZDgRjryKJ_IQ-5IPkEQ63Helu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDEwMSBTYWx0ZWRfX4Iq8iK9TEFth
 iTTfEsfzFvjjhS59QfJHj9eVNnEaxaUbtg0rEvAJ92uRXi9f3yPZSTJ+jSIOhYstc71hIW1iFYL
 rB7/WLMr+BQTzngk7IMHgLnjjyQjQQyIMahgVGLp+naJdhutSR7GlZf9dnrjuBI8PXevbergKMF
 LjkH5aJ15LebDmiLANPXzt1FS55MaW7Vqwf3nsX0buyKGkZ7PHPyZgo8EtjvnUTJ5F+KBsARh9+
 LKHK1oM4Y4E281noelDJ/Zm8gZa8CoCZe/xplqRbTZDlj905VHPtR/4Fla6wKFFIOpQ81U6ZiGP
 GLepLEbwjHLgG6p2X/nGhv7By2+v5sBRAZELrU0MV6HFLMWFxf89p+JLPqG6BA6O51Kg0RlQjqE
 2A8aGGzHcZKiAc0cBpMJ5K0ipjXM3JBeqeY2CmbC7OaGiaZMYUKsCYVY4ftzRZ+LRqPdd2FO
X-Authority-Analysis: v=2.4 cv=CLoqXQrD c=1 sm=1 tr=0 ts=6888cd76 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=8Yr4R-HfXjpLVZqX0moA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_03,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0 suspectscore=0 mlxlogscore=999 spamscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507290101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_063238_836748_7AC4823F 
X-CRM114-Status: GOOD (  12.88  )
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

T24gNy8yNS8yNSAxMjoyMiBQTSwgWml5dWUgWmhhbmcgd3JvdGU6Cj4gVGhlIGdjY19hdXhfY2xr
IGlzIHVzZWQgYnkgdGhlIFBDSWUgUm9vdCBDb21wbGV4IChSQykgYW5kIGlzIG5vdCByZXF1aXJl
ZAo+IGJ5IHRoZSBQSFkuIFRoZSBjb3JyZWN0IGNsb2NrIGZvciB0aGUgUEhZIGlzIGdjY19waHlf
YXV4X2Nsaywgd2hpY2ggdGhpcwo+IHBhdGNoIHVzZXMgdG8gcmVwbGFjZSB0aGUgaW5jb3JyZWN0
IHJlZmVyZW5jZS4KPiAKPiBUaGUgZGlzdGluY3Rpb24gYmV0d2VlbiBBVVhfQ0xLIGFuZCBQSFlf
QVVYX0NMSyBpcyBpbXBvcnRhbnQ6IEFVWF9DTEsgaXMKPiB0eXBpY2FsbHkgdXNlZCBieSB0aGUg
Y29udHJvbGxlciwgd2hpbGUgUEhZX0FVWF9DTEsgaXMgcmVxdWlyZWQgYnkgY2VydGFpbgo+IFBI
WXPigJRwYXJ0aWN1bGFybHkgR2VuNCBRTVAgUEhZc+KAlGZvciBpbnRlcm5hbCBvcGVyYXRpb25z
IHN1Y2ggYXMgY2xvY2sKPiBnYXRpbmcgYW5kIHBvd2VyIG1hbmFnZW1lbnQuIFNvbWUgbm9uLUdl
bjQgUXVhbGNvbW0gUEhZcyBhbHNvIHVzZQo+IFBIWV9BVVhfQ0xLLCBidXQgdGhleSBkbyBub3Qg
cmVxdWlyZSBBVVhfQ0xLLgo+IAo+IFRoaXMgY2hhbmdlIGVuc3VyZXMgcHJvcGVyIGNsb2NrIGNv
bmZpZ3VyYXRpb24gYW5kIGF2b2lkcyB1bm5lY2Vzc2FyeQo+IGRlcGVuZGVuY2llcy4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBaaXl1ZSBaaGFuZyA8eml5dWUuemhhbmdAb3NzLnF1YWxjb21tLmNvbT4K
PiAtLS0KCkZpeGVzOiA0ODlmMTRiZTBlMGEgKCJhcm02NDogZHRzOiBxY29tOiBzYTg3NzVwOiBB
ZGQgcGNpZTAgYW5kIHBjaWUxIG5vZGVzIikKCktvbnJhZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
