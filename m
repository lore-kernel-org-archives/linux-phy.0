Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96C80C43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 10:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+8aF0NH3UGZtyUZaq3mcI0s9a8uauenTEeewrKCRJg=; b=QA9A1st+JkbEAC
	NzyK2y99t2sCrspMG3uHzFst4ZlMplB224GW1PmIn0PUkye40ny/Gp8QgyHz3yr7uZzr5vD60aT5I
	Hiko59q8LjZb6dwtr7PQDfm7iznIEM/ahgf3dvpRCXOUnWCjAmpmLsfAQzyLZwIOJDtkWZtmAw6oa
	NW+zO5EalOwoPpeCt65C9bBOhgLHclQN+n0JYBTrBL4qs3JpjVl5OfGdvvoBIQAYIwPdmBuPjzCjU
	V3YPRfBiApSYopWJYnPbkAOFoxPWfkP5e+plWi0xJENGt3HhIgzhx3LTtuecBOvDeHO6nyXuMHy8x
	KEQBjABBG/6jsAcG0qMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi8Zk-00000004itb-1WeW;
	Fri, 10 Jul 2026 10:35:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi8Zh-00000004it6-1RPF
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 10:35:18 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66A7dW0p056474;
	Fri, 10 Jul 2026 10:35:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0VNeZa+WwsYVEwc2VhixC0Sc25pyzjx75Px6WvTTqMQ=; b=EtNEkmFnteX1K/uR
	J2kr27dUmdYkDlGiIPN5e8uOgGH0A1MUTcHXqPaxqTDVegHvkgDZ9tIsEcGNvI8x
	k8sBcHY3tXJJ0bqkt5yZrDb8diMpJGKgvrPc52M5Y7jRAO2P++LvQDpNIVRrBKKB
	dGmkB6jesxjiwdZsRkVZVLY+o0ybwFV0Wc7In5OQAH5aY0uW8HXNPFTgns5XQH3z
	TWsVjgRqc+WakOtwH3hIFCXChUI6XhQikR18of2dRvitcXWT/s76pe5aWuaVWPlO
	Nvb4ERLnP5SP1SN+fAhDKuDoCFoozz2bZGPWIWPY0QFm66295+b76ErWF3u2pwfG
	WaZTyg==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fajwtam1t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Jul 2026 10:35:13 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.7/8.18.1.7) with ESMTP id 66AAZ9in002800;
	Fri, 10 Jul 2026 10:35:09 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 4f6u8m28kj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Jul 2026 10:35:09 +0000 (GMT)
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.18.1.12/8.18.1.12) with ESMTP id 66AAUUSg028405;
	Fri, 10 Jul 2026 10:35:09 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com (hu-kotarake-hyd.qualcomm.com [10.213.97.140])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 66AAZ8oI002794
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Jul 2026 10:35:09 +0000 (GMT)
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 2389607)
	id 37491B06; Fri, 10 Jul 2026 16:05:08 +0530 (+0530)
Date: Fri, 10 Jul 2026 16:05:08 +0530
From: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        sashiko-reviews@lists.linux.dev,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>, robh@kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
        vkoul@kernel.org, olteanv@gmail.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add Shikra CQM SoM platform
Message-ID: <20260710103508.wszmnvdbyyufwk7n@hu-kotarake-hyd.qualcomm.com>
References: <20260513142936.kauwa3czigfs7qs5@hu-kotarake-hyd.qualcomm.com>
 <0ac665bb-1a21-4077-aa9e-97162f7f4784@oss.qualcomm.com>
 <20260514103918.cs5m5kcxcrcgukvx@hu-kamalw-hyd.qualcomm.com>
 <obdxony34ckfbtsqj66siszw44sgieskcye5hg66ulkisctpwl@fyqczpze5tnw>
 <20260518114927.edxbzvklqatlntv2@hu-kamalw-hyd.qualcomm.com>
 <CAO9ioeVMieo8HtpRw+n4ZU9uV-_RQM061q5XfAA1Dtk2fnp4+g@mail.gmail.com>
 <bvankzuazswuigrm7hvyjqigzfaru5o43wi3zvyphgme2pgqwz@pyspqky3u6cn>
 <5idu4ljmcvcvzqsr5g73h2roxzs36l6xxc5ju6ovc5aitt3gx4@wmfqueyf2rj6>
 <20260630124220.4lja4zshpf66kwj3@hu-kotarake-hyd.qualcomm.com>
 <sfilvfwibse2vpi74vownkx32kz2dhkkvriphtti5jn2p32ffx@2q4p7nahzoxz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <sfilvfwibse2vpi74vownkx32kz2dhkkvriphtti5jn2p32ffx@2q4p7nahzoxz>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Authority-Analysis: v=2.4 cv=XOYAjwhE c=1 sm=1 tr=0 ts=6a50cae1 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=slKp1ct8OLNxQBgdEJ8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: PE43KxIqXuHnRxZAMHd_vf0DGdBrnasU
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEwMDEwNCBTYWx0ZWRfX+Usn3AKk7KhV
 zvIZuJb8VWByQIuwinA9eh+uTCSHDyH4IzrkhLuB4NxxtjAsoVeOlmEVwvR68KgHezhw6QgSi40
 /IpnaWAs83aAzzb0hi4WEIfKwzL5Goo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEwMDEwNCBTYWx0ZWRfX9zpmbOk2VULN
 hFsaeOo2wsNpTSsdjJOVbOl4cBC09cgGIKY8Joyg+vyH+CRnYIAaOL9aIAgJPcf3lgPKURuqgzp
 q+4ZjiBusGeQ0cIIbXo8hKJFrIoyYhIpSAjlKFZxs4Qrwo2hWbqxPIYpzem6R9zhefAcxn0KDpS
 XnpMpDU38EIJllWq4+UeWQCQyOcim2isCqFsyKZ1mp7kknlNnwNwC5ngOfHDQ8QUT+nLm43T4kf
 KJZAMOWKYSHK0jPJ6yEGwlFlus6gYIP8NtQFA//cAdgGKkZGfdX85cYJyAyga03+01p37eIZQ7x
 /0zW7u4SUkjrSrTOWmVNxAH+cZLdNhXbeFtkk37nmozjhiSnKv+jI+1tUEbg7H37S6wwvgt5ba/
 qmJTNQIhlufNMMqMfinuiQU8G8ETVx9egiE8xsJ1ezeEdRTCMglwxVF9nAi8mOd5JzQAgDGiqcE
 +FfxfApihIiGWUEkYeQ==
X-Proofpoint-ORIG-GUID: PE43KxIqXuHnRxZAMHd_vf0DGdBrnasU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-10_02,2026-07-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 adultscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607100104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_033517_389132_220BA0FB 
X-CRM114-Status: GOOD (  54.97  )
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

T24gRnJpLCBKdWwgMDMsIDIwMjYgYXQgMDY6Mjg6MjdQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiBUdWUsIEp1biAzMCwgMjAyNiBhdCAwNjoxMjoyMFBNICswNTMwLCBSYWtl
c2ggS290YSB3cm90ZToKPiA+IE9uIFN1biwgSnVuIDI4LCAyMDI2IGF0IDAzOjMzOjIzUE0gKzAz
MDAsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPiA+IE9uIFRodSwgSnVuIDI1LCAyMDI2IGF0
IDA5OjExOjE5UE0gKzA1MzAsIEthbWFsIFdhZGh3YSB3cm90ZToKPiA+ID4gPiBPbiBXZWQsIEp1
biAxNywgMjAyNiBhdCAwMzo0ODoxNFBNICswMzAwLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+
ID4gPiA+ID4gT24gTW9uLCAxOCBNYXkgMjAyNiBhdCAxNDo0OSwgS2FtYWwgV2FkaHdhCj4gPiA+
ID4gPiA8a2FtYWwud2FkaHdhQG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgo+ID4gPiA+ID4gPgo+
ID4gPiA+ID4gPiBPbiBTdW4sIE1heSAxNywgMjAyNiBhdCAwODoxODoxNVBNICswMzAwLCBEbWl0
cnkgQmFyeXNoa292IHdyb3RlOgo+ID4gPiA+ID4gPiA+IE9uIFRodSwgTWF5IDE0LCAyMDI2IGF0
IDA0OjA5OjE4UE0gKzA1MzAsIEthbWFsIFdhZGh3YSB3cm90ZToKPiA+ID4gPiA+ID4gPiA+IE9u
IFdlZCwgTWF5IDEzLCAyMDI2IGF0IDA2OjE0OjIwUE0gKzAzMDAsIERtaXRyeSBCYXJ5c2hrb3Yg
d3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+IE9uIDEzLzA1LzIwMjYgMTc6MjksIFJha2VzaCBLb3Rh
IHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gPiA+IE9uIFdlZCwgTWF5IDEzLCAyMDI2IGF0IDAzOjAx
OjQ3UE0gKzAzMDAsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4g
PiBPbiBXZWQsIE1heSAxMywgMjAyNiBhdCAwNDoyODozNUFNICswMDAwLCBzYXNoaWtvLWJvdEBr
ZXJuZWwub3JnIHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBUaGFuayB5b3UgZm9yIHlv
dXIgY29udHJpYnV0aW9uISBTYXNoaWtvIEFJIHJldmlldyBmb3VuZCAyIHBvdGVudGlhbCBpc3N1
ZShzKSB0byBjb25zaWRlcjoKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gLSBbSGlnaF0gVGhlIFBN
SUMgcmVndWxhdG9yIGRlZmluaXRpb25zIG9taXQgdGhlaXIgcmVxdWlyZWQgaW5wdXQgc3VwcGx5
IGRlcGVuZGVuY2llcyAoZS5nLiwgYHZkZF9zMi1zdXBwbHlgLCBgdmRkX2wzLXN1cHBseWApLCBi
cmVha2luZyB0aGUgcG93ZXIgaGllcmFyY2h5Lgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiAtIFtN
ZWRpdW1dIFRoZSBkZXZpY2UgdHJlZSBpbmFjY3VyYXRlbHkgaGFyZGNvZGVzIHRoZSBgY29tcGF0
aWJsZWAgc3RyaW5nIHRvIGEgZGlmZmVyZW50IFBNSUMgbW9kZWwgKGBxY29tLHJwbS1wbTIyNTAt
cmVndWxhdG9yc2ApIGluc3RlYWQgb2YgZXhwbGljaXRseSBpZGVudGlmeWluZyB0aGUgYWN0dWFs
IGhhcmR3YXJlIChQTTQxMjUpLgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiAtLQo+ID4gPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgcG00
MTI1X3MyOiBzMiB7Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAg
cmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTAwMDAwMD47Cj4gPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gKyAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTIwMDAw
MD47Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgIH07Cj4gPiA+ID4gPiA+ID4g
PiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IERvIHRoZXNlIHJlZ3VsYXRvcnMgbmVl
ZCB0byBleHBsaWNpdGx5IGRlZmluZSB0aGVpciBpbnB1dCBzdXBwbHkgZGVwZW5kZW5jaWVzCj4g
PiA+ID4gPiA+ID4gPiA+ID4gPiA+IHN1Y2ggYXMgdmRkX3MyLXN1cHBseT8KPiA+ID4gPiA+ID4g
PiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gV2l0aG91dCB0aGVzZSBwcm9wZXJ0
aWVzLCB0aGUgcmVndWxhdG9yIGZyYW1ld29yayBtaWdodCBiZSB1bmF3YXJlIHRoYXQgdGhlCj4g
PiA+ID4gPiA+ID4gPiA+ID4gPiA+IFBNSUMgcmVndWxhdG9ycyBkcmF3IHBvd2VyIGZyb20gdXBz
dHJlYW0gc3VwcGxpZXMuCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+
ID4gPiA+IElmIHRoZSBrZXJuZWwgZHluYW1pY2FsbHkgbWFuYWdlcyB0aGUgdXBzdHJlYW0gc3Vw
cGx5IGFuZCBpdHMgcmVmZXJlbmNlIGNvdW50Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IGRyb3Bz
IHRvIHplcm8sIGNvdWxkIGl0IGJlIGRpc2FibGVkLCBjYXVzaW5nIGFuIHVuZXhwZWN0ZWQgcG93
ZXIgbG9zcyBmb3IKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gZG93bnN0cmVhbSBjb21wb25lbnRz
Pwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+IEFuZCB0aGlzIGlz
IGEgY29ycmVjdCBjb21tZW50LiBQbGVhc2UgcHJvdmlkZSBtaXNzaW5nIHN1cHBsaWVzLgo+ID4g
PiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiBBcyBwZXIgdGhlIFF1YWxjb21t
IHN5c3RlbSBkZXNpZ24sIHRoZSBwYXJlbnQtY2hpbGQgc3VwcGx5IHJlbGF0aW9uc2hpcAo+ID4g
PiA+ID4gPiA+ID4gPiA+IGlzIG1hbmFnZWQgYnkgdGhlIFJQTSBmaXJtd2FyZSwgbm90IHRoZSBM
aW51eCByZWd1bGF0b3IgZnJhbWV3b3JrLiBUaGUKPiA+ID4gPiA+ID4gPiA+ID4gPiBSUE0gZW5z
dXJlcyB0aGUgcGFyZW50IHN1cHBseSBpcyBuZXZlciBkaXNhYmxlZCB1bnRpbCBhbGwgc3Vic3lz
dGVtCj4gPiA+ID4gPiA+ID4gPiA+ID4gdm90ZXMgYXJlIGNsZWFyZWQuCj4gPiA+ID4gPiA+ID4g
PiA+Cj4gPiA+ID4gPiA+ID4gPiA+IEhvdyBpcyB0aGlzIGRpZmZlcmVudCBmcm9tIG90aGVyLCBw
cmV2aW91cyBwbGF0Zm9ybXM/Cj4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gVGhpcyBp
cyBub3QgZGlmZmVyZW50LiBJbiB0aGUgcHJldmlvdXMgcGxhdGZvcm1zIHRvbyB0aGlzIGlzIHRh
a2VuIGNhcmUgZnJvbSB0aGUKPiA+ID4gPiA+ID4gPiA+IFJQTS9SUE1IIGZpcm13YXJlIHNpZGUs
IHRoZSBvbmx5IGNhc2Ugd2hlcmUgd2UgbWF5IG5lZWQgZXhwbGljaXQgdm90ZSB0byBwYXJlbnQK
PiA+ID4gPiA+ID4gPiA+IGlzIGZvciBub24tcnBtaC9ycG0gcmVndWxhdG9yIHJhaWxzIChsaWtl
IGkyYyBiYXNlZCByZWd1bGF0b3IgcG04MDA4KSwgd2hpY2gKPiA+ID4gPiA+ID4gPiA+IG1heSBo
YXZlIGEgUlBNL1JQTUggcmVndWxhdG9yIGFzIGEgcGFyZW50Lgo+ID4gPiA+ID4gPiA+ID4KPiA+
ID4gPiA+ID4gPiA+IEV2ZW4gb24gdGhvc2UgcHJldmlvdXMgdGFyZ2V0cyB0aGUgcGFyZW50IHJh
aWwgb2YgYWxsIFJQTS9SUE1IIHJlZ3VsYXRvcnMgYXJlCj4gPiA+ID4gPiA+ID4gPiBpbnRlcm5h
bGx5IHZvdGVkIGJ5IFJQTS9SUE1IIEZXIGF0IHByb3BlciB2b2x0YWdlIHdpdGggcmVxdWlyZWQg
aGVhZHJvb20KPiA+ID4gPiA+ID4gPiA+IGNhbGN1bGF0ZWQgYmFzZWQgb24gdGhlIGFjdGl2ZSBj
aGlsZCByYWlscy4gVGhpcyB3YXMgZG9uZSBmb3IgYWxsIHRoZQo+ID4gPiA+ID4gPiA+ID4gc3Vi
c3lzdGVtcyAoaW5jbHVkaW5nIEFQUFMpIHJlZ3VsYXRvcnMuCj4gPiA+ID4gPiA+ID4gPgo+ID4g
PiA+ID4gPiA+ID4gU28gbm8gZXhwbGljaXQgaGFuZGxpbmcgZnJvbSB0aGUgQVBQUyBpcyByZXF1
aXJlZCBmb3IgcGFyZW50IHN1cHBseS4KPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IFlvdSBh
cmUgZXhwbGFpbmluZyB0aGUgZHJpdmVyIGJlaGF2aW91ci4gQnV0IHRoZSBxdWVzdGlvbiBpcyBh
Ym91dCB0aGUKPiA+ID4gPiA+ID4gPiBoYXJkd2FyZSBkZXNjcmlwdGlvbi4gSWYgdGhlcmUgaXMg
bm8gZGlmZmVyZW5jZSwgcGxlYXNlIGFkZCBuZWNlc3NhcnkKPiA+ID4gPiA+ID4gPiBzdXBwbGll
cyBiYWNrLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBJIHVuZGVyc3RhbmQgeW91ciBjb25jZXJu
IGFib3V0IGRlc2NpYmluZyB0aGUgcGFyZW50LWNoaWxkIHJlbGF0aW9uIGluIHRoZQo+ID4gPiA+
ID4gPiBkZXZpY2V0cmVlLCBhbmQgZ2l2ZW4gdGhhdCB3ZSBoYXZlIGJlZW4gYWxtb3N0IGFsd2F5
cyBmb2xsb3dlZCB0aGlzIGZvciBhbGwKPiA+ID4gPiA+ID4gdGhlIHByZXZpb3VzIHRhcmdldHMs
IGl0IHdpbGwgZXhwZWN0ZWQgb2YgdXMgdG8gYWRkIHRoZW0uCj4gPiA+ID4gPiAKPiA+ID4gPiA+
IFllcy4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBIb3dldmVyLCB3ZSB3YW50
IHRvIGF2b2lkIHRoZSB1bm5lY2Vzc2FyeSBhY2Nlc3MgdG8gdGhlIHBhcmVudCBmcm9tIEFQUFMu
Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IFdoeT8gV2hhdCBpcyB0aGUgcmVhc29uPyBEbyB3ZSB3YW50
IHRvIGRvIHRoZSBzYW1lIGZvciBhbGwgdGhlCj4gPiA+ID4gPiBwbGF0Zm9ybXM/IE9ubHkgZm9y
IFNoaWtyYT8gU29tZXRoaW5nIGVsc2U/Cj4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gQXQgdGhlIG1v
bWVudCwgSSBkbyBub3Qgc2VlIGEgd2F5IHRvIGF2b2lkIHRoYXQsIGlmIHdlIGFkZCB0aGUgcGFy
ZW50Cj4gPiA+ID4gPiA+IHJlZ3VsYXRvcnMuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoYXQgZGVw
ZW5kIG9uIHRoZSBhbnN3ZXIgdG8gdGhlIHByZXZpb3VzIHF1ZXN0aW9uLiBJbiB0aGUgZW5kLCB3
ZSBjYW4KPiA+ID4gPiA+IG1ha2UgdGhlIGRyaXZlciBpZ25vcmUgdGhlIHBhcmVudHMgYnkgcmVt
b3ZpbmcgdGhlbSBmcm9tIHRoZSByZWd1bGF0b3IKPiA+ID4gPiA+IGRlc2MuCj4gPiA+ID4gCj4g
PiA+ID4gT2ssIHRoaXMgc2VlbXMgbGlrZSBhIGdvb2Qgc3VnZ2VzdGlvbiwgc28geW91IG1lYW4g
aXRzIG9rIGlmIHdlIGRlZmluZSB0aGUKPiA+ID4gPiByZWd1bGF0b3IgZGVzYydzIHN1cHBseSBj
b2x1bW4gd2l0aCBOVUxMPyBBbmQgb25seSBrZWVwIHRoYXQgaW4gdGhlIERUPwo+ID4gPiA+IAo+
ID4gPiA+IHlvdSBtZWFuIGxpa2UgdGhpcz8KPiA+ID4gPiBodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9kcml2ZXJz
L3JlZ3VsYXRvci9xY29tLXJwbWgtcmVndWxhdG9yLmM/aD12Ny4xI24xNDUzCj4gPiA+ID4gCj4g
PiA+ID4gKHBsZWFzZSBsZXQgbWUga25vdyBpZiBpIGdvdCB0aGF0IHJpZ2h0LiB0aGFua3MpCj4g
PiA+IAo+ID4gPiBZZXMuIERvbid0IGZvcmdldCB0byBleHBsYWluIGluIHRoZSBjb21taXQgbWVz
c2FnZSwgd2h5IHlvdSBhcmUgZG9pbmcKPiA+ID4gc28uCj4gPiAKPiA+IEN1cnJlbnRseSwgQWdh
dHRpIHVzZXMgdGhlIHNhbWUgUE1JQywgc28gd2UgY2Fubm90IHNldCB0aGUgZHJpdmVyCj4gPiBz
dXBwbHkgbmFtZSByZWZlcmVuY2UgdG8gTlVMTC4gU2luY2UgaXQncyBhbiBvbGRlciB0YXJnZXQs
Cj4gPiB3ZSdsbCBuZWVkIHRvIHJ1biBhIHJlZ3Jlc3Npb24gYmVmb3JlIG1ha2luZyBhbnkgZHJp
dmVyLWxldmVsIGNoYW5nZXMuCj4gCj4gU3VyZSwganVzdCBkbyBpdCBwbGVhc2UuCj4KU3VyZSwg
SSB3aWxsIHRlc3QgdGhpcyBvbiBib3RoIEFnYXR0aSBhbmQgU2hpa3JhIGFuZCBwb3N0IGl0IGFz
IGEgbmV3CnBhdGNoIHNlcmllcywgc2luY2UgdGhlIGN1cnJlbnQgY2hhbmdlcyBoYXZlIGFscmVh
ZHkgYmVlbiBwaWNrZWQgdXAuCgo+ID4gQWRkaXRpb25hbGx5LCB0aGUgY2hpbGQtdG8tcGFyZW50
IHJlZ3VsYXRvciBnYW5naW5nIGRpZmZlcnMgYmV0d2Vlbgo+ID4gU2hpa3JhIGFuZCBBZ2F0dGk6
Cj4gPiAKPiA+ICAtIE9uIEFnYXR0aSwgbDMgcmVndWxhdG9yIGlzIGdhbmdlZCB3aXRoIHZkZF9s
MTNfbDE0X2wxNV9sMTYKPiA+ICAtIE9uIFNoaWtyYSwgbDMgaXMgZ2FuZ2VkIHdpdGggdmRkX2wy
X2wzCj4gCj4gV2VsbCwgc29tZWJvZHkgdHJpZWQgdG8gYmUgdG9vIHNtYXJ0IHdoZW4gY29udHJp
YnV0aW5nIEFnYXR0aS4gTm93IHRoYXQKPiBuZWVkcyB0byBiZSBmaXhlZC4gQmUgc3VyZSB0byBr
ZWVwIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5IHdpdGggdGhlCj4gZXhpc3RpbmcgRFRzLgo+IAo+
IEZyb20gdGhlIHNjaGVtYXRpY3MgdGhhdCBJIHNlZSwgdGhlIHBpbnMgYXJlOgo+IAo+IC0gdmlu
X2wxCj4gLSB2aW5fbDJfbDMKPiAtIHZpbl9sNV9sNl9sN19sMTFfbDEyCj4gLSB2aW5fbDhfbDkK
PiAtIHZpbl9sMTAKPiAtIHZpbl9sMTNfbDE0Cj4gLSB2aW5fbDE1X2wxNgo+IC0gdmluX2wxN19s
MjIKPiAtIHZpbl9sMThfbDE5Cj4gLSB2aW5fbDRfbDIwX2wyMQo+IC0gdmluX3hvX3JmCj4gCj4g
UGxlYXNlIGNvcnJlY3QgdGhlIGJpbmRpbmdzIGFuZCBhZGp1c3QgdGhlIGRyaXZlci4KPgpTdXJl
LCBJJ2xsIGZpeCB0aGUgQm90aCBEVCBhbmQgZHJpdmVyIGJhc2VkIG9uIHRoZSBzY2hlbWF0aWMg
cGluIG5hbWVzLAprZWVwaW5nIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5LCBhbmQgcG9zdCBpdCBh
cyBhIG5ldyBwYXRjaCBzZXJpZXMuCgo+ID4gU2luY2UgdmRkX2wyX2wzIGlzIG5vdCBwcmVzZW50
IGFzIGEgc3VwcGx5IG5hbWUgaW4gdGhlIGRyaXZlciwgaXQgd2lsbAo+ID4gYmUgc2tpcHBlZCBi
eSB0aGUgZHJpdmVyIGFuZCB3b3VsZCBvbmx5IHNlcnZlIGFzIGEgcmVwcmVzZW50YXRpb25hbAo+
ID4gcmVmZXJlbmNlIGluIHRoZSBEVC4KPiA+IAo+ID4gV2UgaGF2ZSB0d28gb3B0aW9ucyB0byBj
b25zaWRlcjoKPiA+IAo+ID4gT3B0aW9uIDE6IFNraXAgYWRkaW5nIHRoZSBjaGlsZC9wYXJlbnQg
cmVsYXRpb25zaGlwIGZvciBTaGlrcmEgZm9yIG5vdywKPiA+IHNpbmNlIHRoZSBEVCBiaW5kaW5n
cyBhcmUgbm90IGVuZm9yY2luZyBpdC4gKFJlZjoKPiA+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZWd1bGF0b3IvcWNvbSxzbWQtcnBtLXJlZ3VsYXRv
ci55YW1sP2g9djcuMSkKPiA+IAo+ID4gT3B0aW9uIDI6IEdvIGFoZWFkIGFuZCBhZGQgdGhlIFNo
aWtyYS1zcGVjaWZpYyBnYW5naW5nIGluIERUIG5vdy4gU2luY2UKPiA+IHRoZSBzdXBwbHkgbmFt
ZSAodmRkX2wyX2wzKSBkb2VzIG5vdCBtYXRjaCB3aGF0IHRoZSBkcml2ZXIgZXhwZWN0cwo+ID4g
KEFnYXR0aSdzIG1hcHBpbmcpLCBpdCB3aWxsIGJlIGdyYWNlZnVsbHkgc2tpcHBlZCBieSB0aGUg
ZHJpdmVyIOKAlCBtYWtpbmcKPiA+IGl0IHNhZmUgdG8gYWRkIGZvciBkb2N1bWVudGF0aW9uL3Jl
cHJlc2VudGF0aW9uIHB1cnBvc2VzIHdpdGhvdXQgYW55Cj4gPiBmdW5jdGlvbmFsIGltcGFjdC4K
PiA+IAo+ID4gU28sUGxlYXNlIHNoYXJlIHlvdXIgdGhvdWdodHMgb24gYWJvdmUgb3B0aW9ucyA/
Cj4gCj4gT3B0aW9uIDMuIFRoZSBQTUlDIGlzIG5vdCBTaGlrcmEtc3BlY2lmaWMuIFlvdSd2ZSBz
cG90dGVkIGFuIGVycm9yLgo+IENvcnJlY3QgdGhlIHdheSBpdCBpcyBkZXNjcmliZWQgYW4gdXNl
ZCB3aGlsZSBhZGRpbmcgc3VwcG9ydCBmb3IgU2hpa3JhLgo+IApTdXJlLCBJJ2xsIGNvcnJlY3Qg
dGhlIGRyaXZlciBhbmQgRFQgZGVzY3JpcHRpb24gZm9yIGJvdGggQWdhdHRpIGFuZApTaGlrcmEg
YW5kIHBvc3QgaXQgYXMgYSBuZXcgcGF0Y2ggc2VyaWVzLgoKcmVnYXJkcwpSYWtlc2gga290YQoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
