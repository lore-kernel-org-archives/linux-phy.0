Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5EB4C982F1
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 08:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKLaWfv9nF1l3ngqpD9MO3axeiLw0aMwrYIUaiPBAKM=; b=C01gFgJAJdyUkG
	lAVmRmrW92neRVqMJbFZPC/NgI2plqHWzgfselL0Bb2/gm/1dG5+Issy5IkrXrUwIZWFFyg6VyJ/U
	hAz2d2X0acd9rjn6sSYcnbfyKgk+BWGizSyWQAud9w4JPQP7zdwp2/PgzQxwC+rvs+VpuoAVWyF8H
	2yTsv5gCZ3SZ/HHNeLSADnh1OClcFmlqtYSw6XRWkN0Zkv0hiBE2rtUgfNNp5sajdzuHA/vsh9xX+
	B6XaCQK/ctDMpsiOAQ+6CE3IESjVgjCWj8jDCpw+xd9/Os4uZOTw1LC1bnd8+OTL+2pAgN4uaCXfe
	HhceNd6kDuCRptRYzNbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vdi-00000004dWF-2INA;
	Tue, 22 Sep 2026 08:14:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vdg-00000004dVh-1VcP
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 08:14:10 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68M3h9EH1842373
	for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 08:14:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ep+qvWrcnVbjtwDmimEQJq0arBzRXiRVSsy9QV64YfM=; b=kOPhqr58M7gceaFb
	hzlvB0svdSgKkKZk7b8/OUT7/BmKlUYhQZ3OMIXSvaVEE6FgU7pUYfeG4EUA4Sg9
	LtpbcUvLQ+Zj9Lw1Pup85g0Uh0gQiZBWd66/WSMLva6uIGFpf30VmZcrMv/VT+0i
	MUoejGpy6fqleKbyHmdKie3NNp22agQ0/HI7Z5HiYlAEi5zsaDvT/0sWWmcnZjTP
	YvMdLtsjs40Y5+H8cK2hAm8fDjaC1ePclgYAchwmpyz6MIhQfQZU+/VLWkxwOfVq
	A8Cv2QqNtp58wbftsOJJBEQk3oPlrlmXVFMa3fITbNsftTgCxjgHNwlxoc+QPl6g
	Phtrow==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4guj110x8d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 08:14:07 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cc1b8088202so3479802a12.3
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 01:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790064847; x=1790669647; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Ep+qvWrcnVbjtwDmimEQJq0arBzRXiRVSsy9QV64YfM=;
        b=XGJQI7yWkZaqiGczzZ+mLXTEYhfQoD6wJRUK3YNabpvMWL1B3Gs56Z15VZp97hIGcn
         Y57DjQfKDP58hlRXvpcm919k4bFD1tmL0TWjyKYsGkDRCaBzNx1tsHIzmEP7/AL7IMe0
         WAIlZZa7cYtwOFwc+Vi3s54IC2YYNFITZdzchP46ZlocLbR3lg7EezY1liv3pjhSy2He
         qQ8wo30Z1XMqelIbQd+knBiKIDnRxjF2ILyzyJ0qMxYDro6W+LWCwU95VL3V53UJpJ63
         /uI//lMqT9ohTk99PPnfClXIn/rTHCkURnXRuSKH33ITopZH3FRRlqcSWDz8SaYJjC6C
         z0Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790064847; x=1790669647;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Ep+qvWrcnVbjtwDmimEQJq0arBzRXiRVSsy9QV64YfM=;
        b=f/cVa78mquDcB4G+qST3V3b9Q1QUBGwgKplBsNwseEso1H2/0oPWeympyJpszPXX/j
         2Q5WgY4z7hWazVoaWyJ4waVnAwVM467FXXiwNi8rk+CQMrD2lTJAO9DJljZ5KfpRpoJs
         ReCLvAh73NP4vDLI8f6soNZ5u0gbRU5e3mAKOfqJUjK+/i+H9OCHRABv1GsJZYzKiitk
         fypS2D1LfAod16ynd/35F8t/ddQCF/lioDkCJKxYdz6QaqAXo/bufr4an0fuKtzro5Mq
         c4Vf/D3mkvLhcG3LlGJJnSXikxjN44xmXDG6TxCrsamKtt89CPTyST4px0wtaf6B+7W+
         tIBA==
X-Forwarded-Encrypted: i=1; AKwUvBwMqUJ/kBMhkmZ6+viK4GZSakVmYqqEKzhcL7fd0sgpoFbEp7bc3MZJhQCkXO5xxrfOi6hkg4j86WM=@lists.infradead.org
X-Gm-Message-State: AFuF++koeqAW+Nh7R3yc1ddfIp7lrxBYCYjOrc3DZhru2wAscIKcBjTI
	4QW5bGYtJpv619kZXDmo6gI+JYl2BFWSbiyVXVeV+Lx9ZD+wOS81FRfLnJgLfaBH8bF/bJizeLq
	OkVZU8kjL12KM/bo/YAsafFj+fxfh99Z10vB4vh2KJTA61TcCjZeDuGn7IIS1q4PthTl1
X-Gm-Gg: AYBFou2ifyS0klB+ULFPDMD1590ZrNYKC4cVZojrUZ6FDnuMbu/wowcBC1zY7Gq8n2E
	huXmUWnGkvIAzFYzD/tjovzEF3Kmw5ugi0e52pknT/NniFL+ur0tyn8f76EFC5aaTrbg6Bqu9Cw
	9ihurL7GcAB74b001RhYfh3uCMb/uaGrEseeu1fValQzvFK6MQUGABnVjJF6Y9G5rkytjV47CeU
	CfX32VwUCBtKmyuT1iRsNTzHxNB7QP4XH202vnLeXnnXD/eWY+YmJKLtjPm/RiTc2jmR6E1uEAW
	hWQOrPlYBPD0ioNI/SF3w2k95pi4/9YvZXLftve+YCGkRg2vAyLA2lniHhjC2y0A6U3AT2laz8w
	kRwE80XoPM51SEDolHTahzQ8vyM9uWu7QMNROyza7Mw==
X-Received: by 2002:a05:6a21:3a94:b0:3dd:a196:3091 with SMTP id adf61e73a8af0-3ddec80d83fmr438611637.65.1790064846790;
        Tue, 22 Sep 2026 01:14:06 -0700 (PDT)
X-Received: by 2002:a05:6a21:3a94:b0:3dd:a196:3091 with SMTP id adf61e73a8af0-3ddec80d83fmr438584637.65.1790064846273;
        Tue, 22 Sep 2026 01:14:06 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-144f294d894sm5341693c88.2.2026.09.22.01.14.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 01:14:05 -0700 (PDT)
Date: Tue, 22 Sep 2026 16:13:57 +0800
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: Re: [PATCH v4 0/6] Add PCIe support for Qualcomm Nord platform
Message-ID: <arI4xchgg0ym4fzm@QCOM-aGQu4IUr3Y>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
X-Proofpoint-GUID: dS8z9RpHYKDLWfVnzc-FFE8RagDnfrgj
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIyMDExOCBTYWx0ZWRfX6mq7qrDVPJUd
 s4c9jBbKfOk7nH9lW+xT4q0tY9FB2kukgo3k7Qh3ain9vNoSgpbsOO/7BtGi9QGMjs9bz/S/hjl
 lal9pAMNERvh0cy0GtnrrXZ9TmWiMo4=
X-Proofpoint-ORIG-GUID: dS8z9RpHYKDLWfVnzc-FFE8RagDnfrgj
X-Authority-Analysis: v=2.4 cv=atQnmiZV c=1 sm=1 tr=0 ts=6ab238cf cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=1XWaLZrsAAAA:8 a=P-IC7800AAAA:8 a=JfrnYn6hAAAA:8 a=Arp2LTHWbRu_ztUwPq4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22 a=d3PnA9EDa4IxuAV0gXij:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIyMDExOCBTYWx0ZWRfXwPq4dyTRRHHO
 VrJE5mLgLsnsDF8elUGpq5kKkPVHlCzPHK/QhQBMS9IvXCsPCxQ9AJToGREHItjOyfeyrbyE84L
 eHMS0MJKNFgNxjyA6CKiupdPH03srxwYbNZP4zUVTwMlLYzesfdpSUnSEKIawk4/G5IgmDkNtpu
 NOJ+v24e5TVdeB+jJn9dWCxs1RvsuTNZXnZiaghZzzM2c93ZnJnJUtB/umWlPbyVIvGpTrCw0Ij
 V+4FfsgtbGtN1Mj4W07RuYjlBznW3qYGmNPVkZYn62ia9hAZvI1V95/I3n4VTVPPsZjIuEOew6C
 Gi8MaZ1E3ClgVhSWgqzHwOXVI9i2xcvR/sZuQH3RB5bJKJS/wYGTBfVsoRlHu+NggBTK3P+9ORV
 8YlkgeS3kRCEuNRUV88H9XOXtr3IvoXXP2rXwu2D8BOBz2dKx7vwv1SIGe3b+U2pZrpTm7jLVVh
 4VP+YCI5MAIFB6VtpLQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_07,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 clxscore=1015 priorityscore=1501 adultscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609220118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_011408_405407_CC1548E3 
X-CRM114-Status: GOOD (  22.18  )
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

T24gTW9uLCBTZXAgMjEsIDIwMjYgYXQgMTE6MDc6MDhBTSArMDUzMCwgS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSB3cm90ZToKPiBUaGlzIHNlcmllcyBhZGRzIFBDSWUgc3VwcG9ydCBmb3IgdGhl
IFF1YWxjb21tIE5vcmQgKFNBODc5N1ApIHBsYXRmb3JtLgo+IAo+IE5vcmQgaGFzIGEgc2luZ2xl
IEdlbjUtY2FwYWJsZSBRTVAgUENJZSBQSFkgYmxvY2sgc3BsaXQgaW50byBmb3VyCj4gaW5kZXBl
bmRlbnRseS1jbG9ja2VkIGFuZCBpbmRlcGVuZGVudGx5LXJlc2V0dGFibGUgcG9ydHMgKEEvQi9D
L0QpLgo+IEZpcm13YXJlIHNlbGVjdHMgdGhlIGFjdGl2ZSBsYW5lIHRvcG9sb2d5IGF0IGJvb3Qg
dmlhIGEgVENTUgo+IGNvbmZpZ3VyYXRpb24gcmVnaXN0ZXIsIGFuZCB0aGUgc2FtZSBQSFkgYmxv
Y2sgY2FuIGFwcGVhciBhcyBhIHNpbmdsZQo+IHgxNiBwb3J0LCB4OCt4OCwgeDgreDQreDQsIG9y
IHg4K3g0K3gyK3gyIGRlcGVuZGluZyBvbiB0aGF0IG1vZGUuIFRoaXMKPiBpcyBzaW1pbGFyIGlu
IHNwaXJpdCB0byB0aGUgR2x5bXVyIG11bHRpLVBIWSBzdXBwb3J0IGFscmVhZHkgcG9zdGVkLAo+
IGV4Y2VwdCBOb3JkJ3MgUEhZIHJlZ2lzdGVycyBhcmUgcHJvZ3JhbW1lZCBieSBMaW51eCByYXRo
ZXIgdGhhbiBieQo+IGZpcm13YXJlLCBzbyB0aGlzIHNlcmllcyBhZGRzIHRoZSBQTEwsIFRYUlha
LCBQQ1MgYW5kIFBDUy1sYW5lIGluaXQKPiB0YWJsZXMgYWxvbmcgd2l0aCB0aGUgcG93ZXItdXAv
cG93ZXItZG93bi9zb2Z0LXJlc2V0IHNlcXVlbmNpbmcgbmVlZGVkCj4gdG8gYnJpbmcgZWFjaCBw
b3J0IHVwLgo+IAo+IFRoZSBzZXJpZXMgYWxzbyBkb2N1bWVudHMgYW5kIHdpcmVzIHVwIHRoZSBx
Y29tLG5vcmQtcGNpZSBjb21wYXRpYmxlCj4gKHJldXNpbmcgdGhlIGV4aXN0aW5nIFNBODc3NVAg
UENJZSBjb250cm9sbGVyIGJpbmRpbmcpLCBhbmQgYWRkcyBhCj4gQ09SRV9DTEtfQ0dDX0RJUy9B
VVhfUFdSX0RFVCB3b3JrYXJvdW5kIHJlcXVpcmVkIHRvIGF2b2lkIGEgdGltaW5nCj4gY29udmVy
Z2VuY2UgaXNzdWUgaW4gdGhlIFBDSWUgcG93ZXIgZG9tYWluLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IEtyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0u
Y29tPgo+IC0tLQo+IFRvOiBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPgo+IFRvOiBOZWls
IEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4KPiBUbzogUm9iIEhlcnJpbmcg
PHJvYmhAa2VybmVsLm9yZz4KPiBUbzogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6aytkdEBrZXJu
ZWwub3JnPgo+IFRvOiBDb25vciBEb29sZXkgPGNvbm9yK2R0QGtlcm5lbC5vcmc+Cj4gVG86IENo
YWl0YW55YSBDaHVuZHJ1IDxrcmlzaG5hLmNodW5kcnVAb3NzLnF1YWxjb21tLmNvbT4KPiBUbzog
TG9yZW56byBQaWVyYWxpc2kgPGxwaWVyYWxpc2lAa2VybmVsLm9yZz4KPiBUbzogS3J6eXN6dG9m
IFdpbGN6ecWEc2tpIDxrd2lsY3p5bnNraUBrZXJuZWwub3JnPgo+IFRvOiBNYW5pdmFubmFuIFNh
ZGhhc2l2YW0gPG1hbmlAa2VybmVsLm9yZz4KPiBUbzogQmpvcm4gSGVsZ2FhcyA8YmhlbGdhYXNA
Z29vZ2xlLmNvbT4KPiBUbzogQmpvcm4gQW5kZXJzc29uIDxhbmRlcnNzb25Aa2VybmVsLm9yZz4K
PiBUbzogTWF4aW1lIENoZXZhbGxpZXIgPG1heGltZS5jaGV2YWxsaWVyQGJvb3RsaW4uY29tPgo+
IFRvOiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPgo+IENjOiBzaGVuZ2No
YW8uZ3VvQG9zcy5xdWFsY29tbS5jb20KPiBDYzogbGludXgtYXJtLW1zbUB2Z2VyLmtlcm5lbC5v
cmcKPiBDYzogbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBDYzogZGV2aWNldHJlZUB2
Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwo+IENjOiBs
aW51eC1wY2lAdmdlci5rZXJuZWwub3JnCj4gQ2M6IHNoZW5nY2hhby5ndW9Ab3NzLnF1YWxjb21t
LmNvbQo+IAo+IC0tLQo+IENoYW5nZXMgaW4gdjQ6Cj4gLSBDb3VwbGUgb2Ygbml0cyBpbiBkdCBi
aW5kaW5nICYgcGh5IGRyaXZlciAoc2hhd24sIE1hbmkpCj4gLSBBZGQgcHJvcGVyIGRlc2NyaXB0
aW9uIGZvciBsaW5rLW1vZGUgJiBwaHktY2VsbHMKPiAtIFJlbW92ZSBzb2Mgbm9kZSBhbmQgYWRk
cmVzcyBjZWxscyBmcm9tIGV4YW1wbGUgKE1hbmkpCj4gLSBjaGFuZ2UgY2djX2Rpc193b3JrYXJv
dW5kIHRvIGRpc2FibGVfY2djIChNYW5pKQo+IC0gU3BsaXQgY29tbW9uIGNoYW5nZXMgYW5kIG5v
cmQgY2hhbmdlcyAoTWFuaSkgCj4gLSBMaW5rIHRvIHYzOiBodHRwczovL3BhdGNoLm1zZ2lkLmxp
bmsvMjAyNjA5MDktbm9yZC12My0wLWIwYTgyNzIxYzU0N0Bvc3MucXVhbGNvbW0uY29tCj4gCj4g
Q2hhbmdlcyBpbiB2MzoKPiAtIGNoYW5nZSB0aGUgbmFtZSB0byBxdWFkZnVyY2F0ZWQgcGh5IChL
b25yYWQpLgo+IC0gcmVtb3ZlIG1pbiBpdGVtcyBhbmQgY2hhbmdlIGNsb2NrcyBvcmRlciAoS3J6
eXN6dG9mKS4KPiAtIEZhY3RvciBvdXQgdGhlIGNvbW1vbiBjb25maWcgYW5kIGNyZWF0ZSBvdmVy
bGF5cyAmIHRyeSB0byB1c2UgY29tbW9uCj4gICBzeW1ib2xzIGZvciBnbHltdXIgYW5kIG5vcmQg
KEtvbnJhZCkuCj4gLSBjcmVhdGUgIHFwaHlfc2V0Yml0IGFuZCBxcGh5X2NscmJpdCAoUWlhbmcg
WXUpLgo+IC0gYW5kIGluIHFtcF9wY2llX2V4aXQoKSBhcHBseSBzZXR0aW5ncyBvbmx5IHdoZW4g
bm9jc3IgaXMgcHJlc2VudCAoUWlhbmcgWXUpLgo+IC0gTGluayB0byB2MjogaHR0cHM6Ly9wYXRj
aC5tc2dpZC5saW5rLzIwMjYwODI4LW5vcmQtdjItMC0xOGJmNTlkMTlkNmZAb3NzLnF1YWxjb21t
LmNvbQo+IAo+IENoYW5nZXMgaW4gdjI6Cj4gLSBGaXggZHRiaW5kaW5nIGVycm9ycyAoS3J6eXN6
dG9mKQo+IC0gTGluayB0byB2MTogaHR0cHM6Ly9wYXRjaC5tc2dpZC5saW5rLzIwMjYwODI1LW5v
cmQtdjEtMC03YzAyZjJiODc2NWFAb3NzLnF1YWxjb21tLmNvbQo+IAo+IC0tLQo+IEtyaXNobmEg
Q2hhaXRhbnlhIENodW5kcnUgKDYpOgo+ICAgICAgIGR0LWJpbmRpbmdzOiBwaHk6IHFjb206IGFk
ZCBOb3JkIFFNUCBQQ0llIFBIWSBiaW5kaW5nCj4gICAgICAgZHQtYmluZGluZ3M6IHBjaTogcWNv
bTogYWRkIE5vcmQgUENJZSBjb250cm9sbGVyIGNvbXBhdGlibGUKPiAgICAgICBQQ0k6IHFjb206
IEFkZCBOb3JkIFBDSWUgY29udHJvbGxlciBzdXBwb3J0Cj4gICAgICAgcGh5OiBxY29tOiBxbXA6
IE1vdmUgcXBoeV9zZXRiaXRzL2NscmJpdHMvY2hlY2tiaXRzIHRvIGNvbW1vbiBoZWFkZXIKPiAg
ICAgICBwaHk6IHFjb206IHFtcC1wY2llOiBSZWZhY3RvciBjb21tb24gbXVsdGlwaHkgaGFuZGxp
bmcKPiAgICAgICBwaHk6IHFjb206IHFtcC1wY2llOiBBZGQgTm9yZCBHZW41eDE2IFBDSWUgbXVs
dGktUEhZIHN1cHBvcnQKCk9uIE5vcmQgcGxhdGZvcm06CgpUZXN0ZWQtYnk6IFNoYXduIEd1byA8
c2hlbmdjaGFvLmd1b0Bvc3MucXVhbGNvbW0uY29tPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
