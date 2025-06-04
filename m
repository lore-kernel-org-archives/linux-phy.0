Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55EF4C5B543
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jun 2025 13:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=llrY5+/SviESdUONA9QtfgoHTc32uaW4P4/JRkmKq+o=; b=zEN0nIt9WFoB89
	bl2MJMkqTO+mQMnnT4N4EfBthRVAJoNE12vUD4z+h3+c8Zpk3vmgGjJufJkhM6gIwXtmcwOM6Un8/
	7G17/7I6MFUkrEH/xqw7lD0i9fYI0FsjDujvsHdiFKu/9OPYvY7b/FzSmxUaP1P/GP2FTrccHQTOo
	BO4xcdjL8GYKLXBu6xQjAOlh904SS/NnU2B4Aw9CF1IOkkSoznsSpUx3M3JmV5n6Ypc5fpr5jPNSn
	mpbV01vbaYrS3Ufw7i6lhfa1abdGySfpxe2Hh5W277J8YZqZbC0+QBTOZdVmg1XKdT+mVlja2RWnX
	zn/dPUeCQE97jbdIjC1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMo1g-0000000DQYI-3qKf;
	Wed, 04 Jun 2025 13:19:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMo1e-0000000DQXs-2jKE
	for linux-phy@lists.infradead.org;
	Wed, 04 Jun 2025 13:19:28 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5547gWPv019377
	for <linux-phy@lists.infradead.org>; Wed, 4 Jun 2025 13:19:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AswgeJqCiwnzTJPIuOWk5TVVklGP7eakncy9+WM5WK0=; b=hPftu2LNVjzuOYgD
	QJLJSz8nBlytT11l5owXfIWEpJNojejLBK84ukSOs7+9yh9+q39+jmsjdLxKwIBC
	Kt0J1UDIZva9G+acYtDQ9+B0hHlop22mmQAI7kmJbYJCsfufLORoce9gNAlR8h8E
	6uIxS4p11HlvdiUNplzVqllCuOmlU4SHjWcxM23fxZe9xxvx+IK+QXNL3Lwg1i69
	YPTjTai975aW/25RBnkjnpE/CzmEQT3BVC1tRP2q/ea6ex7JsGndZDfXcDeVRkNZ
	+woW3yYpJKV9MZqdtNR2BxPpQ+gDCqGu8nfi+K9pmQtTTnn1TI8r+hiXkI+4OEDp
	b+u03g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8sx530-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Jun 2025 13:19:24 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d2107d6b30so294825385a.0
        for <linux-phy@lists.infradead.org>; Wed, 04 Jun 2025 06:19:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749043164; x=1749647964;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AswgeJqCiwnzTJPIuOWk5TVVklGP7eakncy9+WM5WK0=;
        b=VkbSN4AZ1I8VcgpfAEArST+8Wkf8Dcv/8WOVjvzkbNGpnOrlMgxtA6Sb0KeoAx5D6+
         65SrvR9c+fUHfutoL+z9i7HtfTdykawf0tlyHThMSrE7vyy6/oRCElSCIREIUEMQ4fo1
         KS1yee7AoI3V6XksfipOxutsdVOIlABIm9GaxS0B/nNmaZipcpUte0qFcrfmicNJEDeK
         h4y3iJt592rBIwQrVWZcL8nLNXzu/UUusGJ7eg88XwgoBQl8o635kvXO0z1TGrcWp6mw
         XplFRzuxzDwSD2k4GOINP+otN/ESW5LgME7kkF4cq0R1yiiQLhmlil4Tqn5jhP+ibvdz
         S0Og==
X-Forwarded-Encrypted: i=1; AJvYcCWvdLFeKHZmJUqLXmnoICIz3TQmOVMaM32C/hmZRYBACpOsID340/umhQ2I5w/0//HHpV2s/7qs7ok=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/cOcD/9kbfNDDNZTxL6Ca2FZnuBWYtB1nQFUXiSxY5bvl+RpB
	e2MSc9bOl2XBsmrvvsSoJGsKWop02VpoiW4GwT2Ktb6hgmZz+6dJF/LVra27ga1NfwHC9q9Dcuu
	JiP24ekFCp4FiM+Qj4nmkTAFxdcJGoYj70YwVc2xnzmzNZutLOG+NasymCSSCss3kS3MH
X-Gm-Gg: ASbGncuYmB7Uqi8N64zP94oYSqSfI+jDNy0d5JJ+IA1HexFQPKnmFz+zLh5opQ3h5Vo
	97k9SrG+l5LZ6T+C4zKKMWocbnsjBovJDVd8FePMJe/Y12KNscp5yLz4gwr03JdJZyGD4xAruoO
	iSRNzun2PoikBhKnoo0iW4cm4NYqFkqj6kLTRmewuikotKoyWXuNZ24WwpArNjN39w4ESb+GhaH
	i5ynoHS2zgyYOdlqY5qxzlApMuhufihiyPSXeV1y3IJSTW+TzIvEiODJinXvnE3/v8ab3/vOojj
	DExMligSjbUCG9YnT0OauY7pCfEigTgpRmsgEZu0SxpU/nfg99E1ybAsw8CTO6PnX2if0GphMns
	=
X-Received: by 2002:a05:620a:17a8:b0:7ce:e010:88bb with SMTP id af79cd13be357-7d21a680f7fmr325496385a.22.1749043163543;
        Wed, 04 Jun 2025 06:19:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxd2DF9ZZitPuPShjI9mgm9ONIB9V2QAlo0khxT5DcL/JlA3x9QRIZjM9V+8DeFW1VeyZ+ng==
X-Received: by 2002:a05:620a:17a8:b0:7ce:e010:88bb with SMTP id af79cd13be357-7d21a680f7fmr325489785a.22.1749043162859;
        Wed, 04 Jun 2025 06:19:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32a85bd25cbsm23502601fa.89.2025.06.04.06.19.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 06:19:21 -0700 (PDT)
Date: Wed, 4 Jun 2025 16:19:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, lpieralisi@kernel.org,
        kwilczynski@kernel.org, manivannan.sadhasivam@linaro.org,
        robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com,
        conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_krichai@quicinc.com,
        quic_vbadigan@quicinc.com
Subject: Re: [PATCH v1 2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document
 link_down reset
Message-ID: <mzubbiwkfshplawugahzbtilibnq3wiy6bqetfarbv4kxw46rs@eranz4lm4bu5>
References: <20250529035416.4159963-1-quic_ziyuzhan@quicinc.com>
 <20250529035416.4159963-3-quic_ziyuzhan@quicinc.com>
 <drr7cngryldptgzbmac7l2xpryugbrnydke3alq5da2mfvmgm5@nwjsqkef7ypc>
 <e8d1b60c-97fe-4f50-8ead-66711f1aa3a7@quicinc.com>
 <34dnpaz3gl5jctcohh5kbf4arijotpdlxn2eze3oixrausyev3@4qso3qg5zn4t>
 <43a6e141-adab-42e9-9966-ec54cb91a6de@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <43a6e141-adab-42e9-9966-ec54cb91a6de@quicinc.com>
X-Proofpoint-ORIG-GUID: soflRQ8XdB6Hiq8Sjykfva8E4dtBmX2A
X-Authority-Analysis: v=2.4 cv=EPcG00ZC c=1 sm=1 tr=0 ts=684047dd cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=JfrnYn6hAAAA:8 a=COk6AnOGAAAA:8 a=b_c0941waCFHaVHBhDUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=1CNFftbPRP8L7MoqJWF3:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: soflRQ8XdB6Hiq8Sjykfva8E4dtBmX2A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDEwMSBTYWx0ZWRfX3SwXJtYm+NVU
 J4IkZin8jmN88eGthUMao+KMoOq/AprnBGhWQCU1xWUzH0vp1xSdngYgdSoEeZRebhsEExhLi0o
 3CwbpDzlMsldrRQaPN13bT4C4hWkvHESMA7OmpfZ34PFQgl9Uwyvyq0eien1Z7o6EzCEvRv4q5u
 qJRiZkKQ05xU0pZMyvkow1YnC9fp8i6RdqeV4uZuX8Tr5FOKcoz+xSTBrhrSmwRQ3xNzmsJsch2
 fV0ZcZ1iLTf2WiCYtqkgaobAluhOKW/CIE87t3Yfno6XbP0B3aT7Nxsd7M9Uy+D5Sxc7XP29rVg
 b9YYhCodaH48dNrI8GU2UXIORxXadihHiLcNHvXyGu6p4tMOvPU7M6UYIj5717XAVJ0MinHqvDn
 moGJKxyhKOqZD5HZtUwnTy2JLh+5Eugsmz/jsNQ+Xuy7p1sJ20el9ZeT47807AH2qXAAomXS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_03,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 mlxscore=0
 clxscore=1015 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506040101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_061926_693558_8730967C 
X-CRM114-Status: GOOD (  33.39  )
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

T24gV2VkLCBKdW4gMDQsIDIwMjUgYXQgMDY6MDU6MjFQTSArMDgwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gCj4gT24gNi80LzIwMjUgNToxNSBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+IE9u
IFdlZCwgSnVuIDA0LCAyMDI1IGF0IDAzOjU4OjMzUE0gKzA4MDAsIFppeXVlIFpoYW5nIHdyb3Rl
Ogo+ID4+IE9uIDYvMy8yMDI1IDk6MTEgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPj4+
IE9uIFRodSwgTWF5IDI5LCAyMDI1IGF0IDExOjU0OjE0QU0gKzA4MDAsIFppeXVlIFpoYW5nIHdy
b3RlOgo+ID4+Pj4gRWFjaCBQQ0llIGNvbnRyb2xsZXIgb24gc2E4Nzc1cCBzdXBwb3J0cyAnbGlu
a19kb3duJ3Jlc2V0IG9uIGhhcmR3YXJlLAo+ID4+Pj4gZG9jdW1lbnQgaXQuCj4gPj4+IEkgZG9u
J3QgdGhpbmsgaXQncyBwb3NzaWJsZSB0byAic3VwcG9ydCIgcmVzZXQgaW4gaGFyZHdhcmUuIEVp
dGhlciBpdAo+ID4+PiBleGlzdHMgYW5kIGlzIHJvdXRlZCwgb3IgaXQgaXMgbm90Lgo+ID4+IEhp
IERtaXRyeSwKPiA+Pgo+ID4+IEkgd2lsbCBjaGFuZ2UgdGhlIGNvbW1pdCBtc2cgdG8KPiA+PiAn
RWFjaCBQQ0llIGNvbnRyb2xsZXIgb24gc2E4Nzc1cCBpbmNsdWRlcyAnbGlua19kb3duJ3Jlc2V0
IG9uIGhhcmR3YXJlLAo+ID4+IGRvY3VtZW50IGl0LicKPiA+PiAiU3VwcG9ydHMiIGltcGxpZXMg
dGhhdCB0aGUgUENJZSBjb250cm9sbGVyIGhhcyBhbiBhY3RpdmUgcm9sZSBpbiBlbmFibGluZwo+
ID4+IG9yIG1hbmFnaW5nIHRoZSByZXNldCBmdW5jdGlvbmFsaXR54oCUaXQgc3VnZ2VzdHMgdGhh
dCB0aGUgY29udHJvbGxlciBpcyBkZXNpZ25lZAo+ID4+IHRvIGFjY29tbW9kYXRlIG9yIGZhY2ls
aXRhdGUgdGhpcyBmZWF0dXJlLgo+ID4+ICAiSW5jbHVkZXMiIHNpbXBseSBzdGF0ZXMgdGhhdCB0
aGUgcmVzZXQgZnVuY3Rpb25hbGl0eSBpcyBwcmVzZW50IGluIHRoZQo+ID4+IGhhcmR3YXJl4oCU
aXQgZXhpc3RzLCB3aGV0aGVyIG9yIG5vdCBpdCdzIGFjdGl2ZWx5IG1hbmFnZWQgb3IgY29uZmln
dXJhYmxlLgo+ID4+IFNvIEkgdGhpbmsgY2hhbmdlIGl0IHRvIGluY2x1ZGVzIHdpbGwgYmUgYmV0
dGVyLgo+ID4+Cj4gPj4gQlJzCj4gPj4gWml5dWUKPiA+Pgo+ID4+Pj4gU2lnbmVkLW9mZi1ieTog
Wml5dWUgWmhhbmcgPHF1aWNfeml5dXpoYW5AcXVpY2luYy5jb20+Cj4gPj4+PiAtLS0KPiA+Pj4+
ICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS1zYTg3NzVwLnlhbWwgIHwg
MTMgKysrKysrKysrLS0tLQo+ID4+Pj4gICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQo+ID4+Pj4KPiA+Pj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS1zYTg3NzVwLnlhbWwgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS1zYTg3NzVwLnlhbWwKPiA+
Pj4+IGluZGV4IGUzZmEyMzJkYTJjYS4uODA1MjU4Y2JjZjJmIDEwMDY0NAo+ID4+Pj4gLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUtc2E4Nzc1cC55
YW1sCj4gPj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fj
b20scGNpZS1zYTg3NzVwLnlhbWwKPiA+Pj4+IEBAIC02MSwxMSArNjEsMTQgQEAgcHJvcGVydGll
czoKPiA+Pj4+ICAgICAgICAgLSBjb25zdDogZ2xvYmFsCj4gPj4+PiAgICAgcmVzZXRzOgo+ID4+
Pj4gLSAgICBtYXhJdGVtczogMQo+ID4+Pj4gKyAgICBtaW5JdGVtczogMQo+ID4+Pj4gKyAgICBt
YXhJdGVtczogMgo+ID4+PiBTaG91bGRuJ3Qgd2UganVzdCB1cGRhdGUgdGhpcyB0byBtYXhJdGVt
czoyIC8gbWluSXRlbXM6MiBhbmQgZHJvcAo+ID4+PiBtaW5JdGVtczoxIGZyb20gdGhlIG5leHQg
Y2xhdXNlPwo+ID4+IEhpIERtaXRyeSwKPiA+Pgo+ID4+IGxpbmtfZG93biByZXNldCBpcyBvcHRp
b25hbC4gSW4gbWFueSBvdGhlciBwbGF0Zm9ybXMsIGxpa2Ugc204NTUwCj4gPj4gYW5kIHgxZTgw
MTAwLCBsaW5rX2Rvd24gcmVzZXQgaXMgZG9jdW1lbnRlZCBhcyBhIG9wdGlvbmFsIHJlc2V0Lgo+
ID4+IFBDSWUgd2lsbCB3b3JrcyBmaW5lIHdpdGhvdXQgbGlua19kb3duIHJlc2V0LiBTbyBJIHRo
aW5rIHNldHRpbmcgaXQKPiA+PiBhcyBvcHRpb25hbCBpcyBiZXR0ZXIuCj4gPiBZb3UgYXJlIGRl
c2NyaWJpbmcgYSBoYXJkd2FyZS4gSG93IGNhbiBhIHJlc2V0IGJlIG9wdGlvbmFsIGluIHRoZQo+
ID4gX2hhcmR3YXJlXz8gSXQncyBlaXRoZXIgcm91dGVkIG9yIG5vdC4KPiAKPiBJIGZlZWwgYSBi
aXQgY29uZnVzZWQuIEFjY29yZGluZyB0byB0aGUgdGhlb3J5IGFib3ZlLCBldmVyeXRoaW5nIHNl
ZW1zIHRvCj4gYmUgbm9uLW9wdGlvbmFsIHdoZW4gZGVzY3JpYmluZyBoYXJkd2FyZSwgc3VjaCBh
cyByZWdpc3RlcnMsIGNsb2NrcywKPiByZXNldHMsIHJlZ3VsYXRvcnMsIGFuZCBpbnRlcnJ1cHRz
4oCUYWxsIG9mIHRoZW0gZWl0aGVyIGV4aXN0IG9yIGRvIG5vdC4KPiAKPiBTZWVtcyBsaWtlIEkg
bWlzdW5kZXJzdGFuZCB0aGUgY29uY2VwdCBvZiAnb3B0aW9uYWwnPyBJcyAnb3B0aW9uYWwnIG9u
bHkKPiB1c2VkIGZvciBjb21wYXRpYmlsaXR5IGFjcm9zcyBkaWZmZXJlbnQgcGxhdGZvcm1zPwo+
IAo+IEFkZGl0aW9uYWxseSwgd2UgaGF2ZSBkb2N1bWVudGVkIHRoZSBQQ0llIGdsb2JhbCBpbnRl
cnJ1cHQgYXMgb3B0aW9uYWwuIEkKPiB3YXMgdGF1Z2h0IHRoYXQsIGluIHRoZSBQQ0llIGRyaXZl
ciwgdGhpcyBpbnRlcnJ1cHQgaXMgcmV0cmlldmVkIHVzaW5nIHRoZQo+IHBsYXRmb3JtX2dldF9p
cnFfYnluYW1lX29wdGlvbmFsIEFQSSwgc28gaXQgY2FuIGJlIGRvY3VtZW50ZWQgYXMgb3B0aW9u
YWwuCj4gSG93ZXZlciwgdGhpcyBzdGlsbCBzZWVtcyB0byBjb250cmFkaWN0IHRoZSB0aGVvcnkg
bWVudGlvbmVkIGVhcmxpZXIuCgpJJ2Qgc2F5LCBpdCBzaG91bGQgbm90IGJlIGRlZmluZWQgYXMg
b3B0aW9uYWwuCgo+IAo+ID4+IEJScwo+ID4+IFppeXVlCj4gPj4KPiA+Pj4+ICAgICByZXNldC1u
YW1lczoKPiA+Pj4+ICsgICAgbWluSXRlbXM6IDEKPiA+Pj4+ICAgICAgIGl0ZW1zOgo+ID4+Pj4g
LSAgICAgIC0gY29uc3Q6IHBjaQo+ID4+Pj4gKyAgICAgIC0gY29uc3Q6IHBjaSAjIFBDSWUgY29y
ZSByZXNldAo+ID4+Pj4gKyAgICAgIC0gY29uc3Q6IGxpbmtfZG93biAjIFBDSWUgbGluayBkb3du
IHJlc2V0Cj4gPj4+PiAgIHJlcXVpcmVkOgo+ID4+Pj4gICAgIC0gaW50ZXJjb25uZWN0cwo+ID4+
Pj4gQEAgLTE2MSw4ICsxNjQsMTAgQEAgZXhhbXBsZXM6Cj4gPj4+PiAgICAgICAgICAgICAgIHBv
d2VyLWRvbWFpbnMgPSA8JmdjYyBQQ0lFXzBfR0RTQz47Cj4gPj4+PiAtICAgICAgICAgICAgcmVz
ZXRzID0gPCZnY2MgR0NDX1BDSUVfMF9CQ1I+Owo+ID4+Pj4gLSAgICAgICAgICAgIHJlc2V0LW5h
bWVzID0gInBjaSI7Cj4gPj4+PiArICAgICAgICAgICAgcmVzZXRzID0gPCZnY2MgR0NDX1BDSUVf
MF9CQ1I+LAo+ID4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIDwmZ2NjIEdDQ19QQ0lFXzBfTElO
S19ET1dOX0JDUj47Cj4gPj4+PiArICAgICAgICAgICAgcmVzZXQtbmFtZXMgPSAicGNpIiwKPiA+
Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICJsaW5rX2Rvd24iOwo+ID4+Pj4gICAgICAg
ICAgICAgICBwZXJzdC1ncGlvcyA9IDwmdGxtbSAyIEdQSU9fQUNUSVZFX0xPVz47Cj4gPj4+PiAg
ICAgICAgICAgICAgIHdha2UtZ3Bpb3MgPSA8JnRsbW0gMCBHUElPX0FDVElWRV9ISUdIPjsKPiA+
Pj4+IC0tIAo+ID4+Pj4gMi4zNC4xCj4gPj4+Pgo+ID4+Pj4KPiA+Pj4+IC0tIAo+ID4+Pj4gbGlu
dXgtcGh5IG1haWxpbmcgbGlzdAo+ID4+Pj4gbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
PiA+Pj4+IGh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo+IAo+IC0tIAo+IFdpdGggYmVzdCB3aXNoZXMKPiBRaWFuZyBZdQo+IAoKLS0gCldpdGgg
YmVzdCB3aXNoZXMKRG1pdHJ5CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
