Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76DCAC3ABB2
	for <linux-phy@archiver.kernel.org>; Fri, 30 May 2025 05:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jz2c3ecAzgZs2/PPToDLsbFN2tHaa28x4WaOrlKF6bs=; b=T6NgnTIB+0bSVu
	JbEdzCdVNQpOOU6pwn0aN82efXfyeicrOxwZQr/PkgYomtmY1FWgh1EwmdMihi5rDvshykBTwueEo
	yCX2FLdm2x4+nK2SzABym82MayAGQbCnwh8tfEp+fpyHsyflfUORJNI1aeR7TUlZnoWcXRHvCCOKF
	uvoK0gALWITyTI5SThDuYstnr/JgCAQ+Qj6PcICwdy9mH/bjsMCWajZP9boB/uZfsb+rBsTQQW+Kl
	PZZz44LGAB5c/AVpywTLVfUyZkJtCQBSN6kFsLrDZcfD/o+y0D7gKJiNwkJBchALBFIbYKXEAJHci
	2Ig1ZOUrMy+KoYhLbQLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKsRi-0000000HIYS-3P3U;
	Fri, 30 May 2025 05:38:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKsRf-0000000HIXt-2SIx
	for linux-phy@lists.infradead.org;
	Fri, 30 May 2025 05:38:21 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54U0vJEj004913
	for <linux-phy@lists.infradead.org>; Fri, 30 May 2025 05:38:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DAM1xv4aIcHbG+44NWHL5X8a66NMADDmmoa/uAs40V0=; b=CeRC5F+JSf4KVN3C
	4nyAdI7/AZkOzvoiFdnzNbY+nVVmiZs+tCb8g1ZnfOHurXlghIxc1j60OpGA6MP1
	Iq0x4XixKmdVvmfIzvviNElSssmARGSyFglKHHQu1CATaYgq91CZO6Q8sARLXcrz
	yXQqveRVpawvf3RbkwmUNRnxYNJno+tMuMn598YtSfnIVDW6B3jiAHjDjt0wYHc6
	qDlGzVWItPBwANgFJgHtn89B9GomQWkFfnG59AfCPI4A7e9G+4QiAr8LlePYpQOK
	wD0rILVIYzrj2h8QVlkE4s5n1QkWBAtuh7IPY5n7BVm1M2uplRsr4HWjGUe4tMQX
	/ejv/g==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u5ek7qcu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 May 2025 05:38:17 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3121cffd7e8so1394459a91.0
        for <linux-phy@lists.infradead.org>; Thu, 29 May 2025 22:38:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748583496; x=1749188296;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DAM1xv4aIcHbG+44NWHL5X8a66NMADDmmoa/uAs40V0=;
        b=h6LpfH30MHg0u81sTJW20CCwO9dg6c0Uea/YxMNl/ReHrH8E9T/exXBxndqhQ+S88Z
         4w3+lfh/hB8pBL5lHeVKL9EKRvYBZtCv6ZYFzmhNyCR/P9s2+wTSwmCEEAfE4zdS3dVK
         XloEfAuC2oaIueR3I0HTCSkFGNapnDq05Dyk/hoqR0H+8gJSrTRZK7c2idHWsmRKmMel
         A3mYaNQk/bmZ0+JUt5rn5HX3L/i6kILY4TcwnHfMVEQ1eZWHBw5A5HLvB2qYeMrleVuh
         llY8IPTISQxGXZsC+5EKXFVb59Usgvjn/1LEhQgcZn8Rrp6PNfOmCs8hzzBHzjwYyraU
         0iqg==
X-Forwarded-Encrypted: i=1; AJvYcCUHpX2X/XSFLvvbP5agPd4dlYKlZpTw9ZKBkFJrO5aWfBLr1mHztivgyXsb2ZuGpqF5kzi+84yXG50=@lists.infradead.org
X-Gm-Message-State: AOJu0YwdLYE3JhuLrhVYY6a4laF4+YFHGTAMiFnHVCHrSgRNTfDPaf0h
	NJSu2Fyb8XfOqVMNzg9WF69nvc/DsPzzJsbBmUTzEqThijPvLqIsmJF4x6P4WOx5wX161WxODDC
	RQqui/Tb7FETB3bGwIvlnmpwpwV01DQ/qWXPzVbA+vA04vNTMFyTjmS946GlOL4YzditBvoL3ds
	yDwhu29lBSc6rTgon2Yvn6H8wOvO/E4wOUG6RaYnWC0rE=
X-Gm-Gg: ASbGncuhhDmCleDt30ohMtw9jx09b2/rYdwLLFtKKKEk4vHpK7LAvzL+ohw+rM6pEHb
	ckXlAjUy6K+Yr/Vqd1TvqPYdU+9Jm6qInThuSCwvXiNecROay441WI3aa12jPepAB22/4Zg==
X-Received: by 2002:a17:90b:55cb:b0:311:e8cc:424e with SMTP id 98e67ed59e1d1-31241e8cb1dmr3480997a91.24.1748583495947;
        Thu, 29 May 2025 22:38:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFlRKedberL2RSYX+Cuqh6kpcKHhbGZ6knyFtPkPCsJbClMKOFQ0UxpJuVW1yGijcS7W1vDNS6L1UHnnyNYTAk=
X-Received: by 2002:a17:90b:55cb:b0:311:e8cc:424e with SMTP id
 98e67ed59e1d1-31241e8cb1dmr3480961a91.24.1748583495522; Thu, 29 May 2025
 22:38:15 -0700 (PDT)
MIME-Version: 1.0
References: <20250525-update_phy-v3-0-5b315cd39993@quicinc.com>
 <20250525-update_phy-v3-2-5b315cd39993@quicinc.com> <mcmpmaapzv3vbiynlrp6sijdjvj6a5j3dxzoixz6b4cxqsvbsl@ecljexn3zg2e>
 <0aef1687-0158-4d7e-8e3d-b6eafc38d049@oss.qualcomm.com>
In-Reply-To: <0aef1687-0158-4d7e-8e3d-b6eafc38d049@oss.qualcomm.com>
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Date: Fri, 30 May 2025 11:08:04 +0530
X-Gm-Features: AX0GCFukz3bJpAGapqXqQc3NL2QHl1v8ESUc1ESnOp93Hj9Tp8FIwCGUoDy2dG8
Message-ID: <CAMyL0qPd2HRv4nr2C9=5SgzSkuKO_1cfZbOUO2aUj3vPWnmJbA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>
X-Authority-Analysis: v=2.4 cv=GIgIEvNK c=1 sm=1 tr=0 ts=68394449 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=eed2zNinQUnWPIZz8mYA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: pFPQKk1RfQ3tuPDX0_d2hBoufGBMFIQT
X-Proofpoint-GUID: pFPQKk1RfQ3tuPDX0_d2hBoufGBMFIQT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDA0NSBTYWx0ZWRfX0YfQF6YEBSxF
 pAjrEMzHKoD+LxWzAdb/lB1FiB4MInq2K4ZNaHfMBw3agur9zusBaJvSCVZplnSMLEvhBpF1CwT
 4srBtAVh5xMB82MJKPyLqUn3ZGTqUn90Pa9fLNzsU3l1PVzfYJiuBCfDRHS3if71hJL8T28agOM
 HGTv3yXmhLs9p5UrRsAlVTMdk8y3cWLMLEobNzl/jHVRr71n44ldHzn6D8Teyo+8c9gkF4sIllN
 QYOrsF7xIgDoEPN//T6EnSfeeDWrJdwu39+j42pLstC7hfL8SXqMzzrzswaAGwdgrGIKg39PH4k
 qGBU3Di5JgcKxJ+SK0Pl6TLI6Bgui5DtQXt4TI4XfqV4BP/EumkJycNkD21foPpa+rflvSXs2HW
 B5PqZjsBWu6QmGUmb3r1SwVpIjhP3ZK/MOMgIr9/O+y13bGe+lFj72Aj6L9Z8kn8uSHNW7rQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_02,2025-05-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 mlxscore=0 phishscore=0 spamscore=0
 suspectscore=0 mlxlogscore=929 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250529_223819_761973_589D817B 
X-CRM114-Status: GOOD (  20.45  )
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

T24gVHVlLCBNYXkgMjcsIDIwMjUgYXQgNDowNuKAr1BNIEtvbnJhZCBEeWJjaW8KPGtvbnJhZC5k
eWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4KPiBPbiA1LzI1LzI1IDM6MjkgUE0sIERt
aXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPiBPbiBTdW4sIE1heSAyNSwgMjAyNSBhdCAxMToyNzox
OEFNICswNTMwLCBNcmlubWF5IFNhcmthciB3cm90ZToKPiA+PiBGcm9tOiBNcmlubWF5IFNhcmth
ciA8bXJpbm1heS5zYXJrYXJAb3NzLnF1YWxjb21tLmNvbT4KPiA+Pgo+ID4+IFRoZSBtYXhpbXVt
IGxpbmsgc3BlZWQgd2FzIHByZXZpb3VzbHkgcmVzdHJpY3RlZCB0byBHZW4zIGR1ZSB0byB0aGUK
PiA+PiBhYnNlbmNlIG9mIEdlbjQgZXF1YWxpemF0aW9uIHN1cHBvcnQgaW4gdGhlIGRyaXZlci4K
PiA+Pgo+ID4+IEFkZCBjaGFuZ2UgdG8gcmVtb3ZlIG1heCBsaW5rIHNwZWVkIHByb3BlcnR5LCBT
aW5jZSBHZW40IGVxdWFsaXphdGlvbgo+ID4+IHN1cHBvcnQgaGFzIGFscmVhZHkgYmVlbiBhZGRl
ZCBpbnRvIHRoZSBkcml2ZXIuCj4gPgo+ID4gQXMgR2VuNCBlcXVhbGl6YXRpb24gaXMgYWxyZWFk
eSBzdXBwb3J0ZWQgYnkgdGhlIFhZWiBkcml2ZXIgcmVtb3ZlIHRoZQo+ID4gbWF4LWxpbmstc3Bl
ZWQgcHJvcGVydHkuCj4gPgo+ID4gIkFkZCBjaGFuZ2UgdG8gcmVtb3ZlIiBpcyBhIGJpdCBjbHVt
c3kuCj4KPiBJJ20gbW9yZSB3b3JyaWVkIGFib3V0IHRoaXMgbm9kZSBub3QgaGF2aW5nIHRoZXNl
IGdlbjQgZXEgc2V0dGluZ3MKPiAoaS5lLiB0aGUgcGFydCB0YWxraW5nIGFib3V0IGRyaXZlciBz
dXBwb3J0IGxhbmRpbmcgaXMgdHJ1ZSwgYnV0IGl0J3MKPiB1bnVzZWQgd2l0aG91dCB0aGUgcHJl
c2V0cyBiZWluZyBleHBsaWNpdGx5IGRlZmluZWQgaW4gZXEtcHJlc2V0cy0xNmd0cykKPgo+IEtv
bnJhZAoKSGkgS29ucmFkLAoKQWN0dWFsbHkgc3RhYmlsaXR5IGlzc3VlIHdhcyByZXNvbHZlZCBi
eSB0aGlzIHBhdGNoIHNlcmllczoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcGNpLzIw
MjQwOTExLXBjaS1xY29tLWdlbjQtc3RhYmlsaXR5LXY3LTMtNzQzZjVjMWZkMDI3QGxpbmFyby5v
cmcvCmFuZCBJIGRvbid0IHRoaW5rIHdlIG5lZWQgdG8gZGVmaW5lIGVxLXByZXNldHMtMTZndHMg
Zm9yIHRoaXMuCgpUaGFua3MsCk1yaW5tYXkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
