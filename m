Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34507CD5BB0
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 15:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+1W73O2AduKw9TtHQueRappMe13AhdvQFmY/Tyz61I=; b=0H6sClwhHfL7ns
	vugQTrc8rAT3Jdc3J2lwvLtn/HCw/rXSH30LBEzC8x5E8nQxhkEp+TeFkKNK2OUQGPTgs3ITGmajw
	7+LDRpo/2hhcsiAjVcqnFepzMA6P4HFpbkrm7P+KvvKirV4naMbEkwznNVw5lGf2G0VUfnT8lqW7S
	W7Zr+IdTtf6uEv7+BVcCKCli2jDhYylzE1rn+hkgc5D7c7Oqgu0t4z9trnZsh51yErC72izSATPR6
	riFe0Dp24mIVbBmKEnS8IWDcuIZ+zDhgwwAhbgppIt3A2MivCu38jlBC19NilgavdgRAzwiqDLb74
	Br1sQTdVyd16W0BWClOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQSHT-0000000BMJ4-2rEJ;
	Fri, 22 May 2026 15:59:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQSHQ-0000000BMI7-45xc
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 15:59:22 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64MA4C6P3947445
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 15:59:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jOEXXmnSOdpDtOzU95RtdRvQpbHdjeOuB7KTSgOtbDE=; b=iccbAOg3VhKIfFR/
	bJHBDoA2KRYGhth/sO3O53MqcvHZDovO9RNeNm6rktjUFKyb4YF4Mxqe9Y/wbEWq
	ZzfKYlW+rcrEiczsj3Ep9vkEfpvJCoggd2kWuKbHKPHiTrtljFBEJnTO29SFw3IM
	0P926k1ehNXwtkY/fhrWWbuRQ135ZJTjaxbsMWjYrUk6CtfXpskZI0aTN3cynW6v
	n2qyko7xCK3g1iykxkvm6eTMqUmxXH34SeDvYUWro707Bu/Tap2d3nMMYzFbhE2V
	9fn1JFC1SXVCIVdJaNf0tF7KYxaqu+MsHCrQWQW7fdygQwBurq8TMJeIH112Owwd
	4rSh0A==
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com [209.85.128.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ean2nhdk1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 15:59:19 +0000 (GMT)
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-7bf0b47d2f8so126415507b3.2
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 08:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779465559; x=1780070359; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jOEXXmnSOdpDtOzU95RtdRvQpbHdjeOuB7KTSgOtbDE=;
        b=Df5CBAywYczeRCG+d2QAfdcNbNz0UMvQgP11qrWk8kMPefPHmJqZP+WADHXoCsVnyJ
         tLj5pFTLlA+oCb/DWt7qOEnRw3o6F19+2jZnAIA/c5EMue48KQrpEZ42zK405Gc+mSlo
         VC7oKZKqS5vjEi7rYpEMxJdgKfDw7iyUOACTFwXIeA+TgVYGnerCzGo9aUTVdzdSbNot
         cEIUuR2/LpZU8Y4/zybIiMJM4RiuF6k1gWxAymFpK9vh36FVQXh1TXBraOR29Z0Zicqc
         uHOmYKlswLECvzXrsyJzwzJ4fnUSsqsYJnj8fD53vS0TCYMb1IrsJt2EzPeOqncb7UFM
         ZpdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779465559; x=1780070359;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jOEXXmnSOdpDtOzU95RtdRvQpbHdjeOuB7KTSgOtbDE=;
        b=rg1T61LujoTExVdBEzPya5FwkcMbtzVhbKL5ZRogjLWV2rWu3YYj1sf3G7v2KEazlq
         zQkmQMM9wrn0GoRx2OO1qWz3YKixjS4cjk/WnES810gF+b0KquoHHzY10ISfPom+c/SU
         7+wIQ72YcWlMHDWYjW68ASHZ1DPVDOJ4bNgV7srXxljYtKH/lw6CiwlpkhWs4jMsWUkj
         fSAoBwj8wC9oGJPe9TcL6dyOvS1WXiaFjrY/Ca1Q9V6fhjHh5SRCpkPRxL6bLiV0fwTv
         QXbIZbZpV6DGWr/JFzEPEG2lKG+/lArG6DQvmv3cF1H/lRBo97YW0L6i7VtSTSNJblM5
         YG2A==
X-Forwarded-Encrypted: i=1; AFNElJ/AG+u6+bvAif6n2nf/NAuSK2wdeHI4L55xciZXgLqpTxXpaiUvcmo8RmJ9DG/A31VCHsvqQsOq6Ag=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5c9SXy03vL/LzdzHaXXGkzCGFrXGb1t6GYBa8ai0JAJr3XmYx
	bmmHNdXfW17M8GLmegOCLmAaCzAHgrxnt1i1xm4ZIl/zffZ8h4nzvY339za3+JT5rRe1KkMrUD7
	iXE+045yRCl0XViKLGXWahmpzyVwAPz275KRMlOM4pkZLf5KgcL+u1JltNpynXV4jvG7x
X-Gm-Gg: Acq92OEUEDYoM4BeKzWudDltglOGy0iCFvtm/svetf5lXl/U83t6v19EnwpE/E4ofUF
	7yudLxBUjlENwIUZlEZ5kfVyrJtrc32HZurCHrOalpPo3xKDkhXHkZYO4Fb8OoLYDJ4ctCWKKdW
	aN9DmPxW/PcVj0m5Md3sEwx2b60MG4b/xQb7JhdQGuExvdPHQeUw8xUOftYk7tl9s8Lgz27pu4A
	Flwasb+rqvPqFauGnJkBBdQsBXZe79hwvAp5jaFef1Q5Yg9thXCn+cttV9IWCVxcdCaxzXgY+Gm
	V9y9tXT9J4j1zN9S+Anxf3H6Pq+P+rwW3wFuq5O2BEAKlfnsDgotlbN0LfVwlhKkwVwr/wwXqmL
	Y89vH0x/Qyar29b0qQ49xM0Vqz7hyopNzU/Fb6H07EcInzPLCkXLZKmfRbi4ostLd78alpjMElo
	feT5gEKzJ4jA==
X-Received: by 2002:a05:690c:25c9:b0:7ba:f690:70be with SMTP id 00721157ae682-7d337fa0bdfmr51043347b3.7.1779465558791;
        Fri, 22 May 2026 08:59:18 -0700 (PDT)
X-Received: by 2002:a05:690c:25c9:b0:7ba:f690:70be with SMTP id 00721157ae682-7d337fa0bdfmr51042897b3.7.1779465558265;
        Fri, 22 May 2026 08:59:18 -0700 (PDT)
Received: from [192.168.101.236] (107-198-5-8.lightspeed.irvnca.sbcglobal.net. [107.198.5.8])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7d38c33c8basm9973097b3.37.2026.05.22.08.59.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 May 2026 08:59:17 -0700 (PDT)
Message-ID: <8a6af223-901e-4d1a-ab3f-7e20980cb683@oss.qualcomm.com>
Date: Fri, 22 May 2026 08:59:15 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] phy: qcom: qmp-combo: skip USB power_off/exit
 after device teardown
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org
Cc: vkoul@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
        abelvesa@kernel.org, faisal.hassan@oss.qualcomm.com,
        linux-phy@lists.infradead.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org, val@packett.cool,
        laurentiu.tudor1@dell.com, alex.vinarskis@gmail.com,
        linux-kernel@vger.kernel.org
References: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
 <20260521010935.1333494-2-mike.scott@oss.qualcomm.com>
 <d543fe6c-88a3-40b8-a83a-ccc6fa80eee3@linaro.org>
Content-Language: en-US
From: Michael Scott <mike.scott@oss.qualcomm.com>
In-Reply-To: <d543fe6c-88a3-40b8-a83a-ccc6fa80eee3@linaro.org>
X-Authority-Analysis: v=2.4 cv=XvDK/1F9 c=1 sm=1 tr=0 ts=6a107d57 cx=c_pps
 a=NMvoxGxYzVyQPkMeJjVPKg==:117 a=cdagev08qavQYXHyx3V8vg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=FPRIOUAp8Z76FSPQ8zIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=kLokIza1BN8a-hAJ3hfR:22
X-Proofpoint-GUID: 31lRN7eaLXdWA9bvmpcrMpnvk3rX-s-e
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDE1OSBTYWx0ZWRfX8z7CrcIu8xzT
 HRNJeQW40j6PE5voLUGRm2vnCykS2ur40plbLGGoGImJPLtCBsECf787FTqWo30IiLzopSvMb0k
 mMd56zruTxq74gjf7JdkKyyM3N2ovieI7jkmjoAyDb2tlGU2+9J6X1w8q1OMJXUACa1jAaYMuvs
 Juhlnk1ign9njQInlRDwKb22FEevD1TkFuJH5mEP1a/zlAuR+lvi3kt1yxYf7XP20aSmehAlktr
 OdpHIZnPDev1gtayBKYj6dKiJZdlngvt3U0A98LB+foQ3drSCVis11sAWNJvDSx8oKEz7P3EQR+
 XgmKvTYAbtJtgr03yosQQU63nJk5UlTlqoJi6q6ovxsn4Z/NhqGEP2oVoV5wkQZgAR/Zsb+b6M7
 yNaPddVBbss0kIWzpSkS3r1CFkqZrTQ3ARPGdp8cPgAVVPPgVhfPkUDLqCXxARQ1ok6lgY3uegC
 2x+Hr9XOan+SphpI1DQ==
X-Proofpoint-ORIG-GUID: 31lRN7eaLXdWA9bvmpcrMpnvk3rX-s-e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_04,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0 spamscore=0
 impostorscore=0 adultscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605220159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_085921_022196_C7552BC3 
X-CRM114-Status: GOOD (  27.89  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gNS8yMS8yNiA0OjU4IEFNLCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+IE9uIDIxLzA1LzIw
MjYgMDI6MDksIE1pY2hhZWwgU2NvdHQgd3JvdGU6Cj4+IHFtcF9jb21ib191c2JfcG93ZXJfb2Zm
KCkgaXMgcmVhY2hhYmxlIGZyb20gYW4gZXh0ZXJuYWwgY29uc3VtZXIKPj4gKG5vdGFibHkgZHdj
MyB2aWEgcGh5X2V4aXQoKSBkdXJpbmcgZHJpdmVyIHVuYmluZCkgYWZ0ZXIgdGhpcyBkZXZpY2Un
cwo+PiBiYWNraW5nIHJlc291cmNlcyBoYXZlIGFscmVhZHkgYmVlbiByZWxlYXNlZCBhbG9uZyBh
IHNlcGFyYXRlIHRlYXJkb3duCj4+IGNoYWluLiBUaGUgZGVyZWZlcmVuY2Ugb2YgcW1wLT5wY3Mg
KHdob3NlIGlvcmVtYXAgbWFwcGluZyBoYXMgYmVlbgo+PiBmcmVlZCBieSBkZXZtIGNsZWFudXAp
IHRoZW4gdGFrZXMgYSBsZXZlbC0zIHRyYW5zbGF0aW9uIGZhdWx0IGFuZAo+PiBvb3BzZXMuCj4+
Cj4+IEVhc2lseSByZXByb2R1Y2libGUgZHVyaW5nIHRlc3Rpbmcgb2YgVVNCLUMgcm9sZS1zd2l0
Y2ggZW5hYmxlbWVudCBvbgo+PiBEZWxsIExhdGl0dWRlIDc0NTUgKFgxRTgwMTAwKSwgYnkgd3Jp
dGluZyAibm9uZSIgdG8gYSBVU0ItQyBEV0MzJ3MKPj4gdXNiX3JvbGVfc3dpdGNoIHJvbGUgYXR0
cmlidXRlLCBlLmcuCj4+Cj4+IMKgwqAgZWNobyBub25lID4gL3N5cy9jbGFzcy91c2Jfcm9sZS9h
ODAwMDAwLnVzYi1yb2xlLXN3aXRjaC9yb2xlCj4+Cj4+IHdoaWNoIHRyaWdnZXJzIHRoZSBjaGFp
bjoKPj4KPj4gwqDCoCBVbmFibGUgdG8gaGFuZGxlIGtlcm5lbCBwYWdpbmcgcmVxdWVzdCBhdCB2
aXJ0dWFsIGFkZHJlc3MgCj4+IGZmZmY4MDAwODc2YzU0MDAKPj4gwqDCoCBwYyA6IHFtcF9jb21i
b191c2JfcG93ZXJfb2ZmLmlzcmEuMCsweDU4LzB4NDcwIFtwaHlfcWNvbV9xbXBfY29tYm9dCj4+
IMKgwqAgQ2FsbCB0cmFjZToKPj4gwqDCoMKgwqAgcW1wX2NvbWJvX3VzYl9wb3dlcl9vZmYrMHg1
OC8weDQ3MCBbcGh5X3Fjb21fcW1wX2NvbWJvXQo+PiDCoMKgwqDCoCBxbXBfY29tYm9fdXNiX2V4
aXQrMHgzOC8weDkwIFtwaHlfcWNvbV9xbXBfY29tYm9dCj4+IMKgwqDCoMKgIHBoeV9leGl0Cj4+
IMKgwqDCoMKgIGR3YzNfcGh5X2V4aXQgW2R3YzNdCj4+IMKgwqDCoMKgIGR3YzNfY29yZV9yZW1v
dmUgW2R3YzNdCj4+IMKgwqDCoMKgIGR3YzNfcmVtb3ZlIFtkd2MzXQo+PiDCoMKgwqDCoCBwbGF0
Zm9ybV9yZW1vdmUKPj4gwqDCoMKgwqAgZGV2aWNlX3JlbGVhc2VfZHJpdmVyX2ludGVybmFsCj4+
IMKgwqDCoMKgIGRldmljZV9kcml2ZXJfZGV0YWNoCj4+IMKgwqDCoMKgIHVuYmluZF9zdG9yZQo+
PiDCoMKgwqDCoCBzeXNmc19rZl93cml0ZQo+PiDCoMKgwqDCoCB2ZnNfd3JpdGUKPj4gwqDCoMKg
wqAga3N5c193cml0ZQo+PiDCoMKgwqDCoCBfX2FybTY0X3N5c193cml0ZQo+PiDCoMKgwqDCoCBl
bDBfc3ZjCj4+Cj4+IFR3byBXQVJOcyBwcmVjZWRlIHRoZSBvb3BzIGZyb20gdGhlIHNhbWUgdGVh
cmRvd24gY2hhaW4sIGNvbmZpcm1pbmcKPj4gdGhlIHJlc291cmNlIG9yZGVyaW5nOgo+Pgo+PiDC
oMKgIFdBUk5JTkc6IGRyaXZlcnMvY2xrL2Nsay5jOjQ0OTQgYXQgCj4+IGNsa19ub2Rydl9kaXNh
YmxlX3VucHJlcGFyZSsweDgvMHgxOAo+PiDCoMKgIFdBUk5JTkc6IGRyaXZlcnMvcmVndWxhdG9y
L2NvcmUuYzoyNjU3IGF0IF9yZWd1bGF0b3JfcHV0KzB4ODQvMHg5OAo+Pgo+PiBpLmUuIHRoZSBw
aXBlIGNsb2NrIHByb3ZpZGVyIGhhcyBiZWVuIHVucmVnaXN0ZXJlZCBhbmQgdGhlIHJlZ3VsYXRv
cnMKPj4gcmVsZWFzZWQgYmVmb3JlIHFtcF9jb21ib191c2JfcG93ZXJfb2ZmKCkgcnVucy4KPj4K
Pj4gVGhlIHByb3BlciBsb25nLXRlcm0gZml4IGlzIGEgdGVhcmRvd24tb3JkZXJpbmcgcmV3b3Jr
IHNvIHRoZSBRTVAKPj4gUEhZJ3MgYmFja2luZyByZXNvdXJjZXMgb3V0bGl2ZSBhbnkgY29uc3Vt
ZXIgdGhhdCBtYXkgc3RpbGwgY2FsbCBpdHMKPj4gcGh5X29wcy4gUGVuZGluZyB0aGF0LCBndWFy
ZCB0aGUgcG93ZXJfb2ZmL2V4aXQgcGF0aHMgd2l0aCB0aGUKPj4gZXhpc3RpbmcgdXNiX2luaXRf
Y291bnQgYmFsYW5jZSBzbyByZS1lbnRyeSBhZnRlciB0ZWFyZG93biBkb2VzIG5vdAo+PiBvb3Bz
LiB1c2JfaW5pdF9jb3VudCB0cmFja3MgdGhlIGJhbGFuY2Ugb2YgdXNiX3Bvd2VyX29uL29mZjsg
aWYgaXQKPj4gaXMgemVybyB3ZSBoYXZlIGVpdGhlciBuZXZlciBwb3dlcmVkIG9uIG9yIGhhdmUg
YWxyZWFkeSBwb3dlcmVkIG9mZiwKPj4gYW5kIHRoZXJlIGlzIG5vdGhpbmcgdG8gZG8uCj4+Cj4+
IFRoZSBzYW1lIGd1YXJkIGlzIGFkZGVkIHRvIHFtcF9jb21ib191c2JfZXhpdCgpIHNpbmNlIGl0
IGlzIHRoZSBlbnRyeQo+PiBwb2ludCB1c2VkIGJ5IGV4dGVybmFsIGNvbnN1bWVycyB2aWEgcGh5
X2V4aXQoKS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTWljaGFlbCBTY290dCA8bWlrZS5zY290dEBv
c3MucXVhbGNvbW0uY29tPgo+Cj4gU29tZXRoaW5nIGxpa2UgdGhpcyByZXF1aXJlcyBhIEZpeGVz
OiB0YWcKVGhhbmtzIcKgIE5vdGVkLgo+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1xbXAtY29tYm8uYyB8IDIyICsrKysrKysrKysrKysrKysrKysrKysKPj4gwqAg
MSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jIAo+PiBiL2RyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4+IGluZGV4IGNkY2ZhZDJlODZiMS4uMGRiMjAw
MjkyNjQyIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAt
Y29tYm8uYwo+PiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8u
Ywo+PiBAQCAtMzkyNiw2ICszOTI2LDE3IEBAIHN0YXRpYyBpbnQgcW1wX2NvbWJvX3VzYl9wb3dl
cl9vZmYoc3RydWN0IHBoeSAKPj4gKnBoeSkKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgcW1wX2NvbWJv
ICpxbXAgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPj4gwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3Qg
cW1wX3BoeV9jZmcgKmNmZyA9IHFtcC0+Y2ZnOwo+PiDCoCArwqDCoMKgIC8qCj4+ICvCoMKgwqDC
oCAqIFJlYWNoYWJsZSBhcyAtPmV4aXQgZnJvbSBleHRlcm5hbCBjb25zdW1lcnMgKG5vdGFibHkg
ZHdjMykgYWZ0ZXIKPj4gK8KgwqDCoMKgICogdGhpcyBkZXZpY2UncyBiYWNraW5nIHJlc291cmNl
cyBoYXZlIGFscmVhZHkgYmVlbiByZWxlYXNlZCBhbG9uZwo+PiArwqDCoMKgwqAgKiBhIHRlYXJk
b3duIGNoYWluLiBSZWZ1c2UgdG8gdG91Y2ggcmVnaXN0ZXJzIGluIHRoYXQgY2FzZS4KPj4gK8Kg
wqDCoMKgICovCj4+ICvCoMKgwqAgaWYgKCFxbXAtPnVzYl9pbml0X2NvdW50KSB7Cj4+ICvCoMKg
wqDCoMKgwqDCoCBkZXZfZGJnKHFtcC0+ZGV2LCAiJXM6IFBIWSBub3QgcG93ZXJlZCBvbiwgc2tp
cHBpbmdcbiIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF9fZnVuY19fKTsKPj4gK8KgwqDC
oMKgwqDCoMKgIHJldHVybiAwOwo+PiArwqDCoMKgIH0KPj4gKwo+PiDCoMKgwqDCoMKgIC8qIFBI
WSByZXNldCAqLwo+PiDCoMKgwqDCoMKgIHFwaHlfc2V0Yml0cyhxbXAtPnBjcywgY2ZnLT5yZWdz
W1FQSFlfU1dfUkVTRVRdLCBTV19SRVNFVCk7Cj4+IMKgIEBAIC0zOTY4LDYgKzM5NzksMTcgQEAg
c3RhdGljIGludCBxbXBfY29tYm9fdXNiX2V4aXQoc3RydWN0IHBoeSAqcGh5KQo+PiDCoMKgwqDC
oMKgIHN0cnVjdCBxbXBfY29tYm8gKnFtcCA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+PiDCoMKg
wqDCoMKgIGludCByZXQ7Cj4+IMKgICvCoMKgwqAgLyoKPj4gK8KgwqDCoMKgICogU2VlIHFtcF9j
b21ib191c2JfcG93ZXJfb2ZmKCk6IGFuIGV4dGVybmFsIGNvbnN1bWVyIG1heSBjYWxsCj4+ICvC
oMKgwqDCoCAqIHBoeV9leGl0KCkgYWZ0ZXIgdGhlIFFNUCBkZXZpY2UncyByZXNvdXJjZXMgaGF2
ZSBiZWVuIHRvcm4KPj4gK8KgwqDCoMKgICogZG93bi4gdXNiX2luaXRfY291bnQgdHJhY2tzIHVz
Yl9pbml0L3VzYl9leGl0IGJhbGFuY2UuCj4+ICvCoMKgwqDCoCAqLwo+PiArwqDCoMKgIGlmICgh
cW1wLT51c2JfaW5pdF9jb3VudCkgewo+PiArwqDCoMKgwqDCoMKgwqAgZGV2X2RiZyhxbXAtPmRl
diwgIiVzOiBQSFkgbm90IGluaXRpYWxpc2VkLCBza2lwcGluZ1xuIiwKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgX19mdW5jX18pOwo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+ICvC
oMKgwqAgfQo+PiArCj4+IMKgwqDCoMKgwqAgbXV0ZXhfbG9jaygmcW1wLT5waHlfbXV0ZXgpOwo+
PiDCoMKgwqDCoMKgIHJldCA9IHFtcF9jb21ib191c2JfcG93ZXJfb2ZmKHBoeSk7Cj4KPiBUaGlz
IGNhbid0IGJlIHJpZ2h0IC0geW91IGNoZWNrIHVzYl9pbml0X2NvdW50IGJlZm9yZSB0aGUgbXV0
ZXggYW5kIAo+IHRoZW4gYWdhaW4gaW5zaWRlIHRoZSBtdXRleCBAIHFtcF9jb21ib191c2JfcG93
ZXJfb2ZmKCk7Cj4KPiBJdCBzZWVtcyBsaWtlIGFuIGVycm9yIHRvIGV2ZW4gZ2V0IHRvIHRoaXMg
ZnVuY3Rpb24gd2l0aCAKPiAhdXNiX2luaXRfY291bnQgYWxzbyBjaGVjayBpZiB0aGF0IGlzIGEg
c2lnbmVkIG9yIGFuIHVuc2lnbmVkIHZhbHVlIGFzIAo+IHVzYl9pbml0X2NvdW50ID0gLTEgd2ls
bCBldmFsdWF0ZSB0cnVlLgoKWWVwLCB0aGVyZSBhcmUgYSBmZXcgaXNzdWVzIHdpdGggdGhpcyBw
YXRjaCAoYW5kIHRoaXMgbG9va3MgbGlrZSBhbiAKZXh0cmEgY2hlY2sgSSBhY2NpZGVudGFsbHkg
bGVmdCBpbikuwqDCoEknbSBkcm9wcGluZyB0aGlzIGZyb20gdGhlIApwYXRjaHNldCBhbmQgSSds
bCByZXZpc2l0IGF0IGEgbGF0ZXIgZGF0ZS4KCkFwb2xvZ2llcyBmb3IgdGhlIG5vaXNlLgoKPgo+
PiDCoMKgwqDCoMKgIGlmIChyZXQpCj4+IC0tIAo+PiAyLjUzLjAKPj4KPgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
