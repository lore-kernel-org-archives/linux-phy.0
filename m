Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1E45C83F17
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 09:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ddoN0T+cS9ISmSxR4fyJ0odbg2/GGXXBfqlbpicd5m4=; b=eDDx+9F0R0f7P6
	Oa8khcE5uoO3GqjZyz9Uxf1Qq2Hkwp0PBi/vFN9rs/H+aRwZIvIZgNJ4Iu9ImbxbupzzTBjjfoUdC
	Ot0/z9YVpP5z/63TGa5FBp4bedGnMcz0piEGCkGJmt5wWVnVAoBHyiV0yHFBRQvaUyF187asr9wAW
	N1dVgxZbeAZDrJAdY91XGUkM2cV8xFBPjINx4aLEaMo3oxsk4bvGF+QW1qsOvSV9Hh6SLSOebG1uP
	P+SYYF7bN/7S9Y0cRh5FQic4kwgrpedgGzMihkpkxQUoNNM3Py3zLeVN8nYtiBB0YBmZkFQ70N+uS
	2BSvZdXZ9fWN/v7vLEIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubcBC-00000004jFb-2nFP;
	Tue, 15 Jul 2025 09:42:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubbXd-00000004bti-2RGv
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 09:01:38 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F6Iks1028873
	for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 09:01:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F8a77/rgWkOVThBy9w14I7Q1+EzmtuydM2ty3lJNP9g=; b=pc+0A6W6hdxvvbE/
	KhUzixK2WYyLJVnPP7GZ6SneWqH7VulEb0DCMvvJ/ujn/NY0TbR5AmIdeh/H6PhI
	Otyb9R2HiWAu8GOQzgMeEcEZuwlM6Z9dkqQXXutnGIyeiFIVriqr+VZLiQ4/iIbo
	gf7CuLT2TJl5W9SSnA6flTwVL33qPTiYKtM0pOX9N9xnnPvNdW6IpbN466GU7NGw
	P8GwpKtC7vkc63+j/5x099za08UDBk3P8yx6TqKwMEUoeE24sSEw2ydqpbx838xm
	oNzShPGdHuWQ3Q+e3B4EnteR/w7siLyOSLkOgzfOUzdZ0Yedq0P0v4dcmq5soszo
	JIRIOg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ugvmyvrp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 09:01:36 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e33990ba42so11943085a.0
        for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 02:01:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752570095; x=1753174895;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F8a77/rgWkOVThBy9w14I7Q1+EzmtuydM2ty3lJNP9g=;
        b=awuzXAO4a23warFxAAnpsydb1+esCnWDMNtAkaXSrbiJStjoF5oIevkscGatkJWbes
         cIBArUwnL4zxB6DB/BsOfdMwamhAozhxsMdNhbY5OKHiNc6nfd0qE6/OrXJIzLCzjw37
         dJTM/GFXvqZsGUg5JZvcyj9f8qE812C4MKCRbqwjg0SSHbru/m9Tnt6ONA9cbJXh76Gr
         U80QwgYgHE+HpUjEDnS/cYz4dMutXDy5jV3SjPTFvVNFBfiNL///g9D6UlYHgE7obmvy
         EZwn8auxA6XvwoazVs0sXKlYuuXFEBOgcqg2mFc/Cc4kb3P10VoBkiAOK6cbLoXml6oD
         LL8g==
X-Forwarded-Encrypted: i=1; AJvYcCUPSJQ+tR2S6VyaG15vgHP9dwlBXO/BilFyIDVBelSvmEg2J9W2fC9FT4+Yj+UfeupuozPqPgOE3jE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxKAWNY47Uavme4YBq98Oj/fUJvEJhkY3egQZAjMk4Lz/qxQd/8
	wJAgUovzX3CABkFijwqUjiXVv3rP9pUq+xz2gQE1fGoXocFq+ZCCKrNDVOmxPLs6DJNIAvCZjKt
	zjA6wbGNEnpqatuInEfkbca8kLtkRnzTRNGxL7FWHndwHwk1iaZVCgLHOZNFl+0Wk035v
X-Gm-Gg: ASbGncuHL3wlfTKZcW6pmIAGO7SMnMQV+QwHGUemEo2ELIhXFCeWSze2e0lbwC9hBK0
	h0O6YLRVqlK+jKVFIL9ZXhfa4DNC4cet8GNP/TmvqouK6flWMBUxCUriO3uLv4XCVWv24z2tGa2
	KFH/1Dvvnupy0bUnBnpbhgQQhkzwLn/MTuS/+HWtW/di1vqx4aKOQGhtNvgBOfNztWYaoD7QVZg
	5V4W9jL9CG4bq0xFRDA5XI+Q51dU+L1yyoaGabXbwY0eKrvIMNlYuP5ud1/RiZF+T+tiQLjh5b8
	M3SyOTX6LeUIbIoJFiiN9FgV/B2xN7L9T32HTeeEU69Wmi5J1ooLjb8dk74xEF0OmrC5AT51IAU
	8MXp/y6jtVya5Ddzpl8Vw
X-Received: by 2002:a05:620a:2953:b0:7e3:31c2:2808 with SMTP id af79cd13be357-7e33c74677cmr44164885a.5.1752570095540;
        Tue, 15 Jul 2025 02:01:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHnFcI+xso0wXHQrA1YLMhJJGyjMb4Uc71Eps9YMyLdxP02OOfX8h0vUGMbiD85MbssFlE5nQ==
X-Received: by 2002:a05:620a:2953:b0:7e3:31c2:2808 with SMTP id af79cd13be357-7e33c74677cmr44163085a.5.1752570094928;
        Tue, 15 Jul 2025 02:01:34 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611ed4c1830sm5595614a12.69.2025.07.15.02.01.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 02:01:34 -0700 (PDT)
Message-ID: <3b760685-97db-46e3-80a3-7fad69ad31cd@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 11:01:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
 <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
 <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
 <eac3a877-a4aa-4789-9013-ab8b6c91e0f3@linaro.org>
 <0a12879f-dc4a-47fb-87a0-ac4b8bcd4d75@linaro.org>
 <53a19b1d-5665-4937-a07c-5dd1fcde06c5@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <53a19b1d-5665-4937-a07c-5dd1fcde06c5@linaro.org>
X-Proofpoint-GUID: xEIy2x53OVuCpzNU5L32cDvmLOSiwley
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDA4MSBTYWx0ZWRfXwyLu+xaBDPwa
 syN3x/f4BniNs1z5E1vFrFjCKwUCv1jb0qzU6wUrWxlx04Ra79yBaZQz6JVJP/nXg5CMxU0K06E
 aPrhCY6oaHXVJvzAic85UFbKDq8JdoON23uzX2drIBwmB0A5rk4VNxvgaRkrpQyWi0LM89EQGTN
 ukLC04+5nGGOtWuwhMYW8uWU7zoZI4tZB++BKb0+zAlvb+cWHDIYtValpQVS0riIHCvDhVL6Ag5
 5UpTstB39m+uRIDjjBLoj+VOWoQ4IMYk5R0bBIOkM0tdpz0VHv888mR+CFuqc9UZuocySFCVnlv
 t/QaKpr2eRS2FZkAV7qk1ED7VDuoU27Xe1jbEj74sP8zNSqW1q4gyH/qvhvLabcsQpS6XrlIVUh
 5sgmdSSPx/TiCeL8IVpgoJ73eth0LiAksfXCPPBryxVlIN4ir0EftXPR5NFSAC9PrqQYMRH0
X-Proofpoint-ORIG-GUID: xEIy2x53OVuCpzNU5L32cDvmLOSiwley
X-Authority-Analysis: v=2.4 cv=C4fpyRP+ c=1 sm=1 tr=0 ts=687618f0 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=Smkn-MmeJTYLAJgBHQQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 malwarescore=0 bulkscore=0
 impostorscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_020137_636997_132DFA9B 
X-CRM114-Status: GOOD (  18.93  )
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

T24gNy8xNS8yNSA4OjM1IEFNLCBWbGFkaW1pciBaYXBvbHNraXkgd3JvdGU6Cj4gT24gNy8xNS8y
NSAwMzoxMywgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPj4gT24gMTQvMDcvMjAyNSAxNjozMCwg
VmxhZGltaXIgWmFwb2xza2l5IHdyb3RlOgo+Pj4+Cj4+Pj4gSSB0aGluayB0aGF0IGlzIGdlbnVp
bmVseSBzb21ldGhpbmcgd2Ugc2hvdWxkIGhhbmRsZSBpbiBjYW1zcy1jc2lkLmMKPj4+PiBtYXli
ZSB3aXRoIHNvbWUgbWV0YS1kYXRhIGluc2lkZSBvZiB0aGUgcG9ydHMvZW5kcG9pbnRzLi4KPj4+
Pgo+Pj4KPj4+IFRoaXMgaXMgYSBDU0lQSFkgcHJvcGVydHksIGEgQ1NJUEhZIGhhcmR3YXJlIGNv
bmZpZ3VyYXRpb24gYW5kIGEgd2lyaW5nCj4+PiBvZiBzZW5zb3JzIHRvIGEgQ1NJUEhZLiBXaGVy
ZSBpcyB0aGUgcmVsYXRpb24gdG8gQ1NJRCBoZXJlPyBUaGVyZSBpcyBuby4KPj4KPj4gQWxsIHRo
ZSBQSFkgcmVhbGx5IG5lZWRzIHRvIGtub3cgaXMgdGhlICMgb2YgbGFuZXMgaW4gYWdncmVnYXRl
LCB3aGljaAo+PiBwaHlzaWNhbCBsYW5lcyB0byBtYXAgdG8gd2hpY2ggbG9naWNhbCBsYW5lcyBh
bmQgdGhlIHBpeGVsIGNsb2NrLgo+Pgo+PiBXZSBzaG91bGQgYWRkIGFkZGl0aW9uYWwgc3VwcG9y
dCB0byB0aGUgS2VybmVsJ3MgRC1QSFkgQVBJIHBhcmFtZXRlcnMKPj4gbWVjaGFuaXNtIHRvIHN1
cHBvcnQgdGhhdCBwaHlzaWNhbC10by1sb2dpY2FsIG1hcHBpbmcgYnV0LCB0aGF0J3Mgbm90Cj4+
IHJlcXVpcmVkIGZvciB0aGlzIHNlcmllcyBvciBmb3IgYW55IGN1cnJlbnRseSBrbm93IHVwc3Ry
ZWFtIHVzZXIgb2YgQ0FNU1MuCj4+Cj4+PiBQbGVhc2Ugc2hhcmUgYXQgbGVhc3QgYSBkZXZpY2Ug
dHJlZSBub2RlIGRlc2NyaXB0aW9uLCB3aGljaCBzdXBwb3J0cwo+Pj4gYSBjb25uZWN0aW9uIG9m
IHR3byBzZW5zb3JzIHRvIGEgc2luZ2xlIENTSVBIWSwgbGlrZSBpdCBzaGFsbCBiZSBkb25lCj4+
PiBleHBlY3RlZGx5Lgo+PiAmY2Ftc3Mgewo+PiDCoMKgwqDCoMKgIHBvcnRAMCB7Cj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCBjc2lwaHkwX2xhbmVzMDFfZXA6IGVuZHBvaW50MCB7Cj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGRhdGEtbGFuZXMgPSA8MCAxPjsKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcmVtb3RlLWVuZHBvaW50ID0gPCZzZW5zb3IwX2VwPjsKPj4gwqDCoMKgwqDC
oMKgwqDCoMKgIH07Cj4+Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBjc2lwaHkwX2xhbmVzMjNfZXA6
IGVuZHBvaW50MCB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRhdGEtbGFuZXMgPSA8
MiAzPjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVtb3RlLWVuZHBvaW50ID0gPCZz
ZW5zb3IxX2VwPjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+IMKgwqDCoMKgwqDCoCB9Owo+
PiB9Owo+IAo+IERvbid0IHlvdSB1bmRlcnN0YW5kIHRoYXQgdGhpcyBpcyBicm9rZW4/Li4gVGhh
dCdzIG5vIGdvb2QuCj4gCj4gUGxlYXNlIGxpc3RlbiBhbmQgcmVyZWFkIHRoZSBtZXNzYWdlcyBn
aXZlbiB0byB5b3UgYWJvdmUsIHlvdXIgcHJvcG9zZWQKPiAic29sdXRpb24iIGRvZXMgbm90IHN1
cHBvcnQgYnkgZGVzaWduIGEgdmFsaWQgaGFyZHdhcmUgc2V0dXAgb2YgdHdvCj4gc2Vuc29ycyBj
b25uZWN0ZWQgdG8gdGhlIHNhbWUgQ1NJUEhZLgo+IAo+IEkgd291bGQgcHJvcG9zZSB0byBzdG9w
IGZvcmNlIHB1c2hpbmcgYW4gdW5jb3JyZWN0YWJsZSBkdCBzY2hlbWUsIGl0Cj4gbWFrZXMgbm8g
c2Vuc2UuCgpJZiBhbGwgeW91J3JlIGFza2luZyBmb3IgaXMgYW4gYWJpbGl0eSB0byBncmFiIGFu
IG9mX2dyYXBoIHJlZmVyZW5jZQpmcm9tIHRoZSBjYW1zcyAodjRsMikgZHJpdmVyLCB5b3UgY2Fu
IHNpbXBseSBkbyBzb21ldGhpbmcgYWxvbmcgdGhlCmxpbmVzIG9mIG9mX2dyYXBoX2dldF9yZW1v
dGVfcG9ydChwaHktPmRldi0+b2Zfbm9kZSkKCktvbnJhZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
