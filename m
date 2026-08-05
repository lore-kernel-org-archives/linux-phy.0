Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 319BCC55174
	for <linux-phy@archiver.kernel.org>; Wed,  5 Aug 2026 09:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RyaMp1fNTydZXzf2D+5xyzn5SH0cHhL+lB5sbKui940=; b=TDogqZ6waf+tQ8
	d7BYue3KE222aD15MY4dD8M69S2BK2sUuWC0Lzx8vjk2uinxtSthw2ljcJUGtmiChuYBNHCiQbgus
	oG1Xj5IyJR1DZp8lCvgRJU0i9JudY4LoS4XkimfQ28y6Nl7klPaykmp1aSQYZ4tO/K8Ylymm0apiK
	I/9sjn9ZQvTiddJ9SCnlpRdtuRRG1gec3l9SOWUR8eM07Q6E2nauaTOZnpDbEQoby6PaUV5luF2Os
	ekxN4dKGSYzQFwvE9LU6GfmEZjxWUjt4sPK1EWf+ijXLv+zK22o9w1YMOti6vVxds9aOHsJX8X+HT
	1CMHLo9fwGm3pSnBO8rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrXoq-00000003bgO-2blm;
	Wed, 05 Aug 2026 09:21:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrXon-00000003bfg-1Tzb
	for linux-phy@lists.infradead.org;
	Wed, 05 Aug 2026 09:21:47 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6758dH4U2468178
	for <linux-phy@lists.infradead.org>; Wed, 5 Aug 2026 09:21:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	17gNOg/IJCDj1TVREVlKHTlpRu+kYYeF1zlXTMH9cdM=; b=N65bEnVLCN0IgCtr
	do/8ey41FYb0KPQrPb/cl/uXZPlPSNcXXmeXM4JjtAGv0D3g8qSXCre+zZQ60kUY
	+ivAbGgcMCAdrh1sp29sbh/Z5ulWH8VRfRskvBOsnHA2XN2SSLVdWlmEj4Ut5f2M
	e4qWfK7TXNrgbMayD5N+aiaXrhUJdV/JQg8EKJh5ZLkB/7fjq/pg/ulWopJNOdcU
	2K+ufSwkVBk1xmbGWpIbDCI2Klpknne+HCY/mpCT6t5t7Ibv0gzGU7+yKd909cdi
	P95Fgczv8THNnDvpQIqsz51ujYQdi+mgbIKrjNOeiMRfpYJNr32vG+Dt7b2lUmSD
	EduKPw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fum56ktx4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 05 Aug 2026 09:21:43 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-84eccf9d899so1147065b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 05 Aug 2026 02:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785921703; x=1786526503; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=17gNOg/IJCDj1TVREVlKHTlpRu+kYYeF1zlXTMH9cdM=;
        b=TvumqEC8a5J5CJs7OgaCV6LfSbop9FIWHHn5jDjTkQdzLW1+JDnsN56qSV/lk3nS4a
         DNiGAmRRGmtMgHLXIXkuhJ8E3K4YhqaIREzLICK0QG8shqGjWjv2dZnTD4pnV83QdR3f
         3b/q0HdPnyaY0c3QgRY/54Deey0OkVAZ0ltdGeER7Mxz2LGI7V1HgKsfvkmrkZNHTOd4
         C5KVIeYlUZOHb9aR2HjYC7bwOdR/b84UXI1ylvVhx2Y/83OiM1pdln/dqeDYxbJBG+bd
         u8r+8BqTmtdPW1G7kh2RgPm3iV1YrbmgI2afyDFa8R4pAeZL+lKTqKdK9ZxsMx3PxS61
         /XMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785921703; x=1786526503;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=17gNOg/IJCDj1TVREVlKHTlpRu+kYYeF1zlXTMH9cdM=;
        b=TqKtQRCgG1jh76HikU9BHYz7xTm9IUSYJav+X5tsAcU1swUytTJbLNUrqnlQxtRdeJ
         /C4xTX2I1TMVmhwrs3tc6pqwaPEqo7AxlNPnThSOCommBLzPiS7qMnoWrxdpUNrEk21r
         WbxVnId1yLDMxTaOwmlAo4lnZUjy56uOU2bB9QiocAquOpkd6rSQEZjULF01CCWYRCXM
         k8iMz10SqZppOQc31LO9MqL9onAb8s9shRJBr5LT78whzBngF28vf9j5TPUI1AddC84a
         jB4ogtzib/Ot72tSXbNJHjztsoFtyeN3xDXpTNc41DJ9jlOAZIkqDsQRf22/v0eO+4yr
         vq5A==
X-Gm-Message-State: AOJu0YyvnMZMk9/R5ikW0SR5He3/p967AtOT1Ouqbh5Yd86vYnVQfv5p
	6IklSeQbankckaLnZ9th/r6zLGUNf6jn7waqks+zhLFGilAh+hVnSS6vGmvrDDveIPmr0ln6DNP
	JqILa3oVJcxlpY+aB235xgXgVqD8/Z06UZ1Fdyi48gg8J5lX6MtMczdAZemvVH0gD129K
X-Gm-Gg: AR+sD12xhA9CYvegMlIDGTnkUTFSoGaMmDeaGeeB03EwnIlAa7j/gSJQvUO0ONIr0ca
	R1LtHOgdxO00m/QyD6oO99XmvUJLQ5r1PXjBCF+dq7QRqQdwbyY0+TtBnqbvSvwo7XoU+Qwavkf
	kR6iWBbK2bHmvrBfFLPU4uM1U+3DkfgbzVZG2DyaJcEt2Hr5oTOcQI5+HMcOb1gf+Xoy/UKqwLe
	sajnPkB45MRnBbdb7yrQFd4oE9xeXdfWuZC+gAS8cmwxkOHk5tXdfK8qkgQDTVuFwlXwf1kekcJ
	1Cn1g7ZNGvjwwl0I/Sc8R87bDJoK9epSYmHuLpeP7Rz8Z83AVelbFtNlXKmjuIoFsEuKtdGpI6B
	Wnw9LpmuELPN4xAzAE6UsTMqGMfqv1jTQS9JtkAgF3b3kxRw=
X-Received: by 2002:a05:6a20:a10a:b0:3c4:3ada:384d with SMTP id adf61e73a8af0-3cb85f42d97mr5462051637.30.1785921702787;
        Wed, 05 Aug 2026 02:21:42 -0700 (PDT)
X-Received: by 2002:a05:6a20:a10a:b0:3c4:3ada:384d with SMTP id adf61e73a8af0-3cb85f42d97mr5461999637.30.1785921702278;
        Wed, 05 Aug 2026 02:21:42 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cbe70928ba2sm1169429a12.29.2026.08.05.02.21.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 02:21:41 -0700 (PDT)
Date: Wed, 5 Aug 2026 02:21:39 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        conor+dt@kernel.org, olteanv@gmail.com
Subject: Re: [PATCH v8 2/6] phy: qcom: qmp-pcie: Add QMP PCIe Multi-PHY driver
Message-ID: <anMAo+DNmtbAvKyf@hu-qianyu-lv.qualcomm.com>
References: <20260730-glymur_linkmode_0731-v8-0-a455265ad8bf@oss.qualcomm.com>
 <20260730-glymur_linkmode_0731-v8-2-a455265ad8bf@oss.qualcomm.com>
 <20260731052639.81FF61F000E9@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260731052639.81FF61F000E9@smtp.kernel.org>
X-Proofpoint-ORIG-GUID: G-4PPHfYB8VlRUL0zmZI1iDO6Q5yAAP-
X-Authority-Analysis: v=2.4 cv=Co+PtH4D c=1 sm=1 tr=0 ts=6a7300a7 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=c92rfblmAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=seLki_t14JjGgSYVy8sA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=GvGzcOZaWPEFPQC_NcjD:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA1MDA3MyBTYWx0ZWRfX6fLeUN8l1Kmt
 dpZ50E2Xfonk9ij5kSxITJaVP9xWc5nSokKIdwXmhCVFCfD0XcUF0WIk2qSMxaDuJfpsACBFsWc
 iCeVtd7Isn+5FZhr6KjFQKVkDLmaZTo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA1MDA3MyBTYWx0ZWRfX4qUumnv9R6kD
 KCTF9Kz3LQij9dxmVl8MJHS2GnnbTWb/D84X+CC8uLyoarLMkZjWni4NcpFaa5E9OBSxrI9qhWH
 UjqaxnnOaWfDywQnsU1YEMZh0FCj3t/Pj0eXmLxJegl2HFavl/fypHCeAsJyrk3yDK10q075K3L
 zwTE/cf4K2AVzOztqk+S63sFfFSaRQD4JF1zc+/KAsqwc/8a9Ug1kVtiN/s+EspLTGuTelaBRTb
 t7lVcTHBzHGFeBDxTlOK0Xe1nk4iJeOf/D2LbyP8iqLcZkcrNv7wDVrjN8K7EcH1ShbEM1lA2F+
 d7rrl5kF/oQtVWz7oHWuZjxTwgVT8Y50LHaT0RPbRjKhymYjB8Y+X+xPUGrz0LhINOIVbTSK8tj
 ABD5zcr1wMqxc0St4wJthZi6WyyGrNmiXpEyn5R0zuC3dZ37Yri5eZGnyK7SBDI2UH53ngSjnMR
 CxsAXaY08w3qGFnq91g==
X-Proofpoint-GUID: G-4PPHfYB8VlRUL0zmZI1iDO6Q5yAAP-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-05_03,2026-08-04_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 clxscore=1015
 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608050073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_022145_398191_E2AF74DD 
X-CRM114-Status: GOOD (  32.08  )
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

T24gRnJpLCBKdWwgMzEsIDIwMjYgYXQgMDU6MjY6MzlBTSArMDAwMCwgc2FzaGlrby1ib3RAa2Vy
bmVsLm9yZyB3cm90ZToKPiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNoaWtv
IEFJIHJldmlldyBmb3VuZCAyIHBvdGVudGlhbCBpc3N1ZShzKSB0byBjb25zaWRlcjoKPiAtIFtN
ZWRpdW1dIEFzeW5jaHJvbm91cyBwbV9ydW50aW1lX3B1dCgpIGR1cmluZyBQSFkgcG93ZXIgb2Zm
IGxlYXZlcyBoYXJkd2FyZSBwb3dlcmVkIG9uIGlmIGRldmljZSBpcyByZW1vdmVkLgo+IC0gW01l
ZGl1bV0gVW5jaGVja2VkIHJldHVybiB2YWx1ZSBvZiBvZl9wcm9wZXJ0eV9jb3VudF9zdHJpbmdz
KCkgbGVhZHMgdG8gbWFzc2l2ZSBhbGxvY2F0aW9uIGF0dGVtcHQgYW5kIGluY29ycmVjdCBlcnJv
ciBtYXNraW5nLgo+IC0tCj4gCj4gLS0tIFBhdGNoIFsyXTogW1BBVENIIHY4IDIvNl0gcGh5OiBx
Y29tOiBxbXAtcGNpZTogQWRkIFFNUCBQQ0llIE11bHRpLVBIWSBkcml2ZXIgLS0tCj4gY29tbWl0
IDUxMmM0OGFjZjkxZTAyYjAyYWU0MzAzNjJjMjM0OGQxY2UyZmI1MjUKPiBBdXRob3I6IFFpYW5n
IFl1IDxxaWFuZy55dUBvc3MucXVhbGNvbW0uY29tPgo+IAo+IHBoeTogcWNvbTogcW1wLXBjaWU6
IEFkZCBRTVAgUENJZSBNdWx0aS1QSFkgZHJpdmVyCj4gCj4gVGhpcyBwYXRjaCBpbnRyb2R1Y2Vz
IGEgZGVkaWNhdGVkIFFNUCBQQ0llIFBIWSBkcml2ZXIgZm9yIGhhcmR3YXJlIGJsb2Nrcwo+IHRo
YXQgc3VwcG9ydCBtdWx0aXBsZSBsaW5rIHRvcG9sb2dpZXMuIEl0IHJlYWRzIHRoZSBjdXJyZW50
IGxpbmsgbW9kZSBmcm9tCj4gdGhlIGhhcmR3YXJlIGFuZCBpbnN0YW50aWF0ZXMgdGhlIG5lY2Vz
c2FyeSBzdWItUEhZcywgaW5oZXJpdGluZyBmaXJtd2FyZQo+IGNvbmZpZ3VyYXRpb25zLgo+IAo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLW11
bHRpcGh5LmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS1tdWx0aXBo
eS5jCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwMC4uNzM5
YzdjOTZhZWVkNgo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNv
bW0vcGh5LXFjb20tcW1wLXBjaWUtbXVsdGlwaHkuYwo+IFsgLi4uIF0KPiA+ICtzdGF0aWMgaW50
IHFtcF9wY2llX3BkX3Bvd2VyX29uKHN0cnVjdCBxbXBfcGNpZSAqcW1wKQo+ID4gK3sKPiA+ICsJ
Y29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnICpjZmcgPSBxbXAtPmNmZzsKPiA+ICsJaW50IGksIHJl
dDsKPiA+ICsKPiA+ICsJZm9yIChpID0gMDsgaSA8IGNmZy0+bnVtX3BkczsgaSsrKSB7Cj4gPiAr
CQlyZXQgPSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KHFtcC0+cGRfZGV2c1tpXSk7Cj4gPiAr
CQlpZiAocmV0IDwgMCkgewo+ID4gKwkJCWRldl9lcnIocW1wLT5kZXYsICJmYWlsZWQgdG8gcG93
ZXIgb24gJXMgZG9tYWluOiAlZFxuIiwKPiA+ICsJCQkJY2ZnLT5wZF9uYW1lc1tpXSwgcmV0KTsK
PiA+ICsJCQlnb3RvIGVycl9wb3dlcl9vZmY7Cj4gPiArCQl9Cj4gPiArCX0KPiA+ICsKPiA+ICsJ
cmV0dXJuIDA7Cj4gPiArCj4gPiArZXJyX3Bvd2VyX29mZjoKPiA+ICsJd2hpbGUgKC0taSA+PSAw
KQo+ID4gKwkJcG1fcnVudGltZV9wdXQocW1wLT5wZF9kZXZzW2ldKTsKPiAKPiBbU2V2ZXJpdHk6
IE1lZGl1bV0KPiBXaWxsIHVzaW5nIGFuIGFzeW5jaHJvbm91cyBwbV9ydW50aW1lX3B1dCgpIGhl
cmUgKGFuZCBpbiAKPiBxbXBfcGNpZV9wZF9wb3dlcl9vZmYpIHJhY2Ugd2l0aCBkZXZpY2UgdW5i
aW5kPwo+IAo+IElmIHRoZSBQSFkgcHJvdmlkZXIgdW5iaW5kcywgZGV2aWNlIGxpbmtzIHdpbGwg
Y2F1c2UgdGhlIGNvbnN1bWVyIHRvIHVuYmluZAo+IGZpcnN0LCB3aGljaCBjYWxscyBwaHlfcG93
ZXJfb2ZmKCkgYW5kIHBoeV9leGl0KCksIHF1ZXVpbmcgYW4gYXN5bmNocm9ub3VzCj4gc3VzcGVu
ZC4gVGhlIFBIWSBwcm92aWRlcidzIGRldnJlcyBjbGVhbnVwIHRoZW4gY2FsbHMgZGV2X3BtX2Rv
bWFpbl9kZXRhY2goKSwKPiB3aGljaCBleGVjdXRlcyBwbV9ydW50aW1lX2Rpc2FibGUoKSBhbmQg
Y2FuY2VscyB0aGUgcGVuZGluZyBzdXNwZW5kLgo+IAo+IERvZXMgdGhpcyBsZWF2ZSB0aGUgaGFy
ZHdhcmUgcG93ZXJlZCBvbj8gU2hvdWxkIHBtX3J1bnRpbWVfcHV0X3N5bmMoKSBiZSB1c2VkCj4g
aW5zdGVhZCB0byBlbnN1cmUgdGhlIGhhcmR3YXJlIHBvd2VycyBkb3duIGJlZm9yZSB0aGUgZG9t
YWluIGRldGFjaGVzPwoKVGhpcyBkcml2ZXIgaGFzIG5vIC5yZW1vdmUgY2FsbGJhY2sgc28gdGhl
cmUncyBubyB1bmJpbmQgcGF0aCBmb3IKcW1wX3BjaWVfcGRfcG93ZXJfb2ZmKCkncyBhc3luYyBw
dXQgdG8gcmFjZSB3aXRoLiBBbmQgZXZlbiBpZgpkZXZfcG1fZG9tYWluX2RldGFjaCBpcyBzb21l
aG93IGNhbGxlZC4gcW1wX3BjaWVfcGRfZGV0YWNoKCkncwpkZXZfcG1fZG9tYWluX2RldGFjaChk
ZXYsIHRydWUpIGhhbmRsZXMgYW55IHN0aWxsLXBlbmRpbmcgYXN5bmMgcmVxdWVzdAppbnRlcm5h
bGx5IChwbV9ydW50aW1lX2Rpc2FibGUoKSDihpIgX19wbV9ydW50aW1lX2JhcnJpZXIoKSkuCgo+
IAo+ID4gKwo+ID4gKwlyZXR1cm4gcmV0Owo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgdm9pZCBx
bXBfcGNpZV9wZF9wb3dlcl9vZmYoc3RydWN0IHFtcF9wY2llICpxbXApCj4gPiArewo+ID4gKwlj
b25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgKmNmZyA9IHFtcC0+Y2ZnOwo+ID4gKwlpbnQgaTsKPiA+
ICsKPiA+ICsJZm9yIChpID0gY2ZnLT5udW1fcGRzIC0gMTsgaSA+PSAwOyBpLS0pCj4gPiArCQlw
bV9ydW50aW1lX3B1dChxbXAtPnBkX2RldnNbaV0pOwo+IAo+IFtTZXZlcml0eTogTWVkaXVtXQo+
IEFzIG1lbnRpb25lZCBhYm92ZSwgY2FuIHRoaXMgYXN5bmNocm9ub3VzIHB1dCByYWNlIHdpdGgg
dGhlIGRldnJlcyB0ZWFyZG93bgo+IGR1cmluZyByZW1vdmFsPwo+IAo+ID4gK30KPiBbIC4uLiBd
Cj4gPiArc3RhdGljIGludCBxbXBfcGNpZV9tdWx0aXBoeV9yZWdpc3Rlcl9jbG9ja3Moc3RydWN0
IGRldmljZSAqZGV2LAo+ID4gKwkJCQkJICAgICAgc3RydWN0IGRldmljZV9ub2RlICpucCwKPiA+
ICsJCQkJCSAgICAgIHN0cnVjdCBxbXBfcGNpZV9tdWx0aXBoeSAqcW1wX2RhdGEpCj4gPiArewo+
ID4gKwlpbnQgbnVtX3BpcGVfb3V0cHV0czsKPiA+ICsJaW50IGksIHJldDsKPiA+ICsKPiA+ICsJ
bnVtX3BpcGVfb3V0cHV0cyA9IG9mX3Byb3BlcnR5X2NvdW50X3N0cmluZ3MobnAsICJjbG9jay1v
dXRwdXQtbmFtZXMiKTsKPiA+ICsKPiA+ICsJcW1wX2RhdGEtPm51bV9waXBlX291dHB1dHMgPSBu
dW1fcGlwZV9vdXRwdXRzOwo+ID4gKwlxbXBfZGF0YS0+cGlwZV9vdXRfY2xrcyA9IGRldm1fa2Nh
bGxvYyhkZXYsIG51bV9waXBlX291dHB1dHMsCj4gPiArCQkJCQkgICAgICAgc2l6ZW9mKCpxbXBf
ZGF0YS0+cGlwZV9vdXRfY2xrcyksCj4gPiArCQkJCQkgICAgICAgR0ZQX0tFUk5FTCk7Cj4gCj4g
W1NldmVyaXR5OiBNZWRpdW1dCj4gRG9lcyB0aGlzIGNvZGUgcHJvcGVybHkgaGFuZGxlIG1pc3Np
bmcgb3IgbWFsZm9ybWVkIGRldmljZSB0cmVlIHByb3BlcnRpZXM/Cj4gCj4gSWYgImNsb2NrLW91
dHB1dC1uYW1lcyIgaXMgbWlzc2luZywgb2ZfcHJvcGVydHlfY291bnRfc3RyaW5ncygpIHdpbGwg
cmV0dXJuCj4gYSBuZWdhdGl2ZSBlcnJvciBjb2RlIChlLmcuLCAtRUlOVkFMKS4gVGhpcyBuZWdh
dGl2ZSB2YWx1ZSBpcyBwYXNzZWQgYXMgdGhlCj4gY291bnQgcGFyYW1ldGVyIHRvIGRldm1fa2Nh
bGxvYygpLCB1bmRlcmZsb3dpbmcgaW50byBhIG1hc3NpdmUgc2l6ZV90LiAKPiAKPiBXaGlsZSB0
aGUgaW50ZXJuYWwgc2l6ZV9tdWwgY2hlY2tzIGluIHRoZSBhbGxvY2F0b3Igc2FmZWx5IHJldHVy
biBOVUxMLCB0aGlzCj4gY2F1c2VzIHRoZSBkcml2ZXIgdG8gZmFpbCBwcm9iZSB3aXRoIC1FTk9N
RU0gcmF0aGVyIHRoYW4gdGhlIGFjdHVhbCBkZXZpY2UKPiB0cmVlIHBhcnNpbmcgZXJyb3IuIFNo
b3VsZCBudW1fcGlwZV9vdXRwdXRzIGJlIGNoZWNrZWQgZm9yIGEgbmVnYXRpdmUgdmFsdWUKPiBi
ZWZvcmUgYXR0ZW1wdGluZyB0aGUgYWxsb2NhdGlvbj8KCkFzIEtvbnJhZCBjb21tZW50ZWQsIGNs
b2NrLW91dHB1dC1uYW1lcyBpcyByZXF1aXJlZCB2aWEgYmluZGluZ3MsIHNvIHRoZQpjaGVjayBp
cyBub3QgcmVxdWlyZWQuCgotIFFpYW5nIFl1Cgo+IAo+ID4gKwlpZiAoIXFtcF9kYXRhLT5waXBl
X291dF9jbGtzKQo+ID4gKwkJcmV0dXJuIC1FTk9NRU07Cj4gPiArCj4gPiArCWZvciAoaSA9IDA7
IGkgPCBudW1fcGlwZV9vdXRwdXRzOyBpKyspIHsKPiA+ICsJCXJldCA9IF9fcGh5X3BpcGVfY2xr
X3JlZ2lzdGVyKGRldiwgbnAsIGksCj4gPiArCQkJCQkgICAgICAmcW1wX2RhdGEtPnBpcGVfb3V0
X2Nsa3NbaV0pOwo+ID4gKwkJaWYgKHJldCkKPiA+ICsJCQlyZXR1cm4gcmV0Owo+ID4gKwl9Cj4g
PiArCj4gPiArCXJldHVybiBkZXZtX29mX2Nsa19hZGRfaHdfcHJvdmlkZXIoZGV2LCBxbXBfcGNp
ZV9tdWx0aXBoeV9jbGtfaHdfZ2V0LCBxbXBfZGF0YSk7Cj4gPiArfQo+IAo+IC0tIAo+IFNhc2hp
a28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDczMC1n
bHltdXJfbGlua21vZGVfMDczMS12OC0wLWE0NTUyNjVhZDhiZkBvc3MucXVhbGNvbW0uY29tP3Bh
cnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
