Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A2A7EDF172
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 15:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2JeZUtoWSM/MSlWgJP80cOullpCUrM2GIlTqP56fpe8=; b=s9yprMq+ckZYpY
	9Lh+vJI5gLn8LBHCt6/ZEJA3Zml/OiU/j3dCAeHBOmNvWIPVOjAi6vXq6ymGoOV6M0qtWEMaGVtuq
	OwAAqGKNgErmlX4k7XAagbiCaTf+/EsDWXWkd7GZ8c1Mnvc+g5vcIbC09VUbZSOrG8aprOjIa8Hv/
	8G4GGL5dY88a/8YCA4hkE9ptkPr7+BaBPjMd621fFWiTFkIGdeJohMsstnz0IOzF6k4yyGFom5Uoh
	P3aqcID7gUFZ5dBbWX9d0GqhbQXiWUqkIKd1qHxD6AmrvZ0o9qRHMl8cHN45+zMBvinRV9wjgOZSQ
	jjhNxJW87Dynu17ES2Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vquj7-00000003ama-3AAr;
	Fri, 13 Feb 2026 15:05:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vquj5-00000003alv-3UKU
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 15:05:01 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61D99DQC2733506
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 15:04:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eW2vMR1Mwf7vQ0YNRjjPpIBK9206Pf0npi9UisdFptM=; b=FKEMdH8lyudUWZ14
	IhLvOfhMG+cz3cNHiHbcM32t6HcH0tewyy2j+HjxQOWeesrfLM/aLgFzNOaJwH5k
	VxDOM4/xx2Yi9swG23pps0H6TnU/2osUCQLd+qVp847oFE8u6C7aS8/ETduKgHNs
	ePP14RE4kfM9rPywYa6i1iS2DjEPYt3ILwRoTWRBzPHDpm6KVyFC3C89/Qy6qg7D
	IspkRFZqlyTCD3pSAFw1X2UVt4diuz/7GWDPcn3qAKZFYmBocF0gyP/WR7X/bprm
	LqGaunGDEkXaNADYyf67xASWbkQ+xW3QZvkUmtML3tPGLt29F3ceMi+jGlUMR6wk
	332P5A==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9s6wtssr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 15:04:59 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5fc6644d5f7so960353137.3
        for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 07:04:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770995098; cv=none;
        d=google.com; s=arc-20240605;
        b=IG08Yo260DV/E0VyE3jU5BUNpiMITHGGHHx59qcCdJrVUnDF3W2BWUxjoW2CBgxTcM
         JxzFIqSaK+WrynKdihhF03b5/B7xDo/1cxV6QZuy3HKNB7KiW6FyEThwVTY7lnT+1Yi7
         dyX/QX9p2SDjgxbXGC7suNSVOX6rVKzOzNCnaY2g/O00YIrb6nZx5Dg14QJHSpVSeFbd
         NFU12PIpBIv8TA4YYb87Pgke6p967H+hzTeCqzGEcHGz7se2C7F5CpZSbAZZG8UUqt+x
         LwwAeBiLl3W4LlpV/XW8HX4B2LUDoqIEJtSxkWnsurbWrhkTLpY6uL2ow2PLjAGtY66o
         vhDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=eW2vMR1Mwf7vQ0YNRjjPpIBK9206Pf0npi9UisdFptM=;
        fh=QeLe+HYkmoB8pISrHkZv1KQVYnywJC69p8XfDdACbyY=;
        b=QfnsO9TiaOReBxGlwnx2x462iCGzkKLK+y290P2RlZmwH4MsdWgZYhKROhyJ14y85Y
         c8WJLFqrUg62Vf4FGiISlyWqKuujZPUJHLjicDy7LblkfC7yLwOedi8UPRlpTTw0FY48
         V1RzzJ9HQOUSZik1lb7Mrn3W8SIPZJuVl+JFhT0UpSenicSR+BF8zwUdxQ/l0YwRpgol
         uZLCCzmxKCqoAtwLVTavhRdSFaFiQF1g8aVJPIDpMqCA1rxAreJwKFe7+iknxjL/lX1t
         Fi+5NMDIyPq7I6P2XELeL1P/1xVr3OkVzpCd02WvIcnB1lFRzPR35Z/ackydmuxqeby4
         aQqg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770995098; x=1771599898; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eW2vMR1Mwf7vQ0YNRjjPpIBK9206Pf0npi9UisdFptM=;
        b=MTyod6USBXUNT1PgFGwctEQLmOAu576leh/qH4EegVHXfF0XE8V2ZA6rIQ8UznS0ft
         RvuN/zxFkYy+ETSTEQwGJx03B1PedpIyaAGJ2Xv9zbz7A4ltj+In0Jw/O2PvAu0Pt42J
         7Ojm4jJlTMX4CW59czs4bcvGsz3qKkBnVpcUN61KnnBpoQjohXJXyXnQl8Srv/phZnzl
         SsEbZ5oFQNDWCc7jTIEb7osbPTm7lvkuEMGuYTEYqQAXZlQWbLTSSuAt3UdIx1S4ihdJ
         MiVn3Hk5t17mlRE/2Oxs+YpGHaZc/WOZ8SFDLpGIB1+TooZUSfwHrD0u7Gpn/Dn+OM5i
         jpIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770995098; x=1771599898;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eW2vMR1Mwf7vQ0YNRjjPpIBK9206Pf0npi9UisdFptM=;
        b=FXI6DOK6pOj97HozdpdURgg+hjd9kh99TsvdcpDwB27Lfoo1VcihLthXs/bzAgKUD+
         UnGLalxDsAawz7kUaiiHfb60jxaXUuTV+m6idojB5InrExzSrIxCd1lnpxrcjayRSzuG
         VNP5Yd0iQk90uAd6bVMwpu99ui2xxXWyVHWiP09VDkKEjum1hIW2gOZKPdFuPYhq+gAP
         jjn8D+5RmWgCT/1pKAbirBel2atBynik/WU5FqCP2bLP/p+eYVGfygcNt1F8p3UdPQ1s
         eMjCEZDt6qrmKQ1IM8C5ItdFpZ6o1/u1Rl0Y26662GrPkbw/zO05QuOMgbjhKB4ZLicv
         dUzg==
X-Forwarded-Encrypted: i=1; AJvYcCVTcmW4ixqKyRozWkTgH5kIhTkcHQi4OwALFZILy/2kWhXbf3mjAkji9zPKowDgV0fhucmHloV2LnM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyt7Q1wBgR4cvEdfiV0wsgL/dm2+BNd86CE7jVWBcfjc4Zj/uj3
	85yREIw1Hw+JscxD4i/rCnVTIStnpDEBjUPLTXnWuYVJ/7o3AQFFJZZPNeyFTCcH5HsUUUH8HyL
	I3Xu7wkooYBVHHuin1uOexWgnxxJiC+hYLzmcgNL2Ia7uVeuKjVgOQ8ivXN1cxMNiQrjpyNmSrp
	J7tbXzg4CdCffUIqpddjvAhcx/Yz2z0WbVcE0Ef0x5JZY=
X-Gm-Gg: AZuq6aIsMD0D1Q5IHNwe3X1bTY+IL8oMDlJm5ihGk5SA78ERauyLtTs10XEMCSZ5wxj
	HEIQtL4gyeeIH+ESHX03Ae/KmCpKkBb/oVsjPgoPHNkaEUcwTYdBL1imeX1Lhmijlcs2B8HvMX5
	THA4/lip6Grzs6eJawLWJnqvbSC4XIMWxHCizP9BF30gFkMois2WvTaRmuGM/j54zFBV0TEFzkg
	Z2ZY11wUdQuWFnU56H49nIg2ZzkA0WPEjQlPaHv
X-Received: by 2002:a05:6102:3ec4:b0:5f5:4eac:cd2e with SMTP id ada2fe7eead31-5fe16f31738mr892475137.32.1770995096702;
        Fri, 13 Feb 2026 07:04:56 -0800 (PST)
X-Received: by 2002:a05:6102:3ec4:b0:5f5:4eac:cd2e with SMTP id
 ada2fe7eead31-5fe16f31738mr892250137.32.1770995094738; Fri, 13 Feb 2026
 07:04:54 -0800 (PST)
MIME-Version: 1.0
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
 <20260205160240.748371-6-loic.poulain@oss.qualcomm.com> <aY7pvakkOnaYsd5p@hovoldconsulting.com>
 <CAFEp6-3yk3sPXj+hGuWvAFsFJAXjH4kWLV8k_5_v9Hax0XxaOg@mail.gmail.com> <aY8Asvu-1u0e02oJ@hovoldconsulting.com>
In-Reply-To: <aY8Asvu-1u0e02oJ@hovoldconsulting.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Fri, 13 Feb 2026 16:04:43 +0100
X-Gm-Features: AZwV_Qi-gcKkQ_iLyM-qQ0bS7RPoFrsjQTRiFlw9B8VJFEwLZ3xDSAVLYDCdjiU
Message-ID: <CAFEp6-0rzkqc0ajN72q=mv3U-TT0JHMSPmnJD6ohKuLmbPz2-A@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] phy: qcom: snps-femto-v2: Fix possible NULL-deref
 on early runtime suspend
To: Johan Hovold <johan@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com,
        neil.armstrong@linaro.org, konrad.dybcio@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: D7IP_KZn7K3RuqfJRRmQHsveT2hH3Qsk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDExNiBTYWx0ZWRfX+9019SZCzhvm
 nAb6UyYcdUzCaCARwn00kmpBh9a0qCC3yZd9lZiCT7NmHdfi5G4L8qUP5ov+UhtzoFQUvPqg7kV
 44BZ5+q4vnm4Mli2liiF3eix1qaRvB1Tx0a4g73tu9OOPAEmwT1XNiC54F4pAM881HcvNft1dTC
 C6wuS9JsKabgoiDiYiSjKqda/XOM3EBYAzwXPnaQdPjQrr3UACoVxrONOgABHb83x5jrFASH/7h
 F2exqayjLYXjTOuB1RT7rt5H8S+19UyzvfyImiLFuVMU0aMvXhvTmq8xe0wOesRPZSdexcA2gAY
 l2Rw6ONpWAnAmguMqGG9Ac1VaR6bn0quDVc0dHaAfQRgEjtwElmhm3VIF8qrOPtpqGqb/afUMLP
 1bTF8eT3rWvabjCxPp5uhowATLw4XZ8e0aUDO6U6azQIRT/lDNtb6VqDtQwonOq2TMe0RhgO6iz
 E6cXictTka1rUy5qEoA==
X-Proofpoint-GUID: D7IP_KZn7K3RuqfJRRmQHsveT2hH3Qsk
X-Authority-Analysis: v=2.4 cv=CLInnBrD c=1 sm=1 tr=0 ts=698f3d9b cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22
 a=GgsMoib0sEa3-_RKJdDe:22 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Q6oW8UG3RuEdIIStXg8A:9 a=QEXdDO2ut3YA:10 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_03,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 malwarescore=0 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_070459_895975_86A519B0 
X-CRM114-Status: GOOD (  23.73  )
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

T24gRnJpLCBGZWIgMTMsIDIwMjYgYXQgMTE6NDXigK9BTSBKb2hhbiBIb3ZvbGQgPGpvaGFuQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gRnJpLCBGZWIgMTMsIDIwMjYgYXQgMTA6NDU6MzJBTSAr
MDEwMCwgTG9pYyBQb3VsYWluIHdyb3RlOgo+ID4gT24gRnJpLCBGZWIgMTMsIDIwMjYgYXQgMTA6
MDfigK9BTSBKb2hhbiBIb3ZvbGQgPGpvaGFuQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gPgo+ID4g
PiBPbiBUaHUsIEZlYiAwNSwgMjAyNiBhdCAwNTowMjo0MFBNICswMTAwLCBMb2ljIFBvdWxhaW4g
d3JvdGU6Cj4gPiA+ID4gRW5hYmxpbmcgcnVudGltZSBQTSBiZWZvcmUgYXR0YWNoaW5nIHRoZSBo
c3BoeSBpbnN0YW5jZSBhcyBkcml2ZXIgZGF0YQo+ID4gPiA+IGNhbiBsZWFkIHRvIGEgTlVMTCBw
b2ludGVyIGRlcmVmZXJlbmNlIGluIHJ1bnRpbWUgUE0gY2FsbGJhY2tzIHRoYXQKPiA+ID4gPiBl
eHBlY3QgdmFsaWQgZHJpdmVyIGRhdGEuIFRoZXJlIGlzIGEgc21hbGwgd2luZG93IHdoZXJlIHRo
ZSBzdXNwZW5kCj4gPiA+ID4gY2FsbGJhY2sgbWF5IHJ1biBhZnRlciBQTSBydW50aW1lIGVuYWJs
aW5nIGFuZCBiZWZvcmUgcnVudGltZSBmb3JiaWQuCj4gPiA+Cj4gPiA+IFNvIGhlcmUgdG9vLCB0
aGUgY29tbWl0IHNob3VsZCByZWZsZWN0IHRoYXQgdGhpcyBjYW5ub3QgcmVhbGx5IGhhcHBlbiBp
bgo+ID4gPiBwcmFjdGljZS4KPiA+Cj4gPiBUaGlzIGhhcHBlbmVkICBpbiBwcmFjdGljZSBpbiB0
aGUgcWNvbeKAkXF1c2IyIFBIWSBkcml2ZXIsIHdpdGggdGhlIHNhbWUKPiA+IGNvZGUgZmxvdy4K
PiA+IEJ1ZzogaHR0cHM6Ly9naXRodWIuY29tL3F1YWxjb21tLWxpbnV4L3Fjb20tZGViLWltYWdl
cy9pc3N1ZXMvMjA4Cj4gPiBQYXRjaDogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYXJt
LW1zbS8yMDI1MTIxOTA4NTY0MC4xMTQ0NzMtMS1sb2ljLnBvdWxhaW5Ab3NzLnF1YWxjb21tLmNv
bS8KPgo+IFRoYW5rcyBmb3IgdGhlIGxpbmsuCj4KPiA+IEkga25vdyBpdCBtYXkgc291bmQgdW5s
aWtlbHksIGJ1dCB0aGlzIGNyYXNoIGhhcyBiZWVuIHJlcG9ydGVkCj4gPiBzZXZlcmFsIHRpbWVz
IGR1cmluZyBib2904oCRc3RyZXNzIHRlc3RpbmcuIEkgaGF2ZW7igJl0IGludmVzdGlnYXRlZAo+
ID4gZGVlcGx5IGVub3VnaCB0byBkZXRlcm1pbmUgd2hldGhlciBpdOKAmXMgY2F1c2VkIGJ5IGFu
IHVuZm9ydHVuYXRlCj4gPiBwcmVlbXB0aW9uIHdpbmRvdyBvciBhIHJhY2luZyBDUFUuCj4KPiBC
dXQgSSdtIGxpdGVyYWxseSBhc2tpbmcgZm9yICp3aGF0KiB3b3VsZCB0cmlnZ2VyIHRoZSBzdXNw
ZW5kIGluIHRoYXQKPiBpbml0aWFsIHdpbmRvdyBiZXR3ZWVuIGVuYWJsZSgpIGFuZCBmb3JiaWQo
KSBjYXVzZSBJIGRvbid0IHNlZSBpdC4KClRvIGJlIGhvbmVzdCwgSSBoYWQgbm90IGluaXRpYWxs
eSBsb29rZWQgaW50byB0aGUgZXhhY3QgY2F1c2Ugb2YgdGhlCnN1c3BlbmQgdHJpZ2dlciB1bnRp
bCBub3csIGJ1dCBoZXJlIGlzIHdoYXQgaXMgaGFwcGVuaW5nLgoKVGhlIFBIWSBpcyBhIHN1cHBs
aWVyIG9mIHRoZSBVU0IgZGV2aWNlLiBBIFVTQiBkZXZpY2UgY2Fubm90IGJlIHByb2JlZAp1bnRp
bCBhbGwgaXRzIHN1cHBsaWVycyBhcmUgcmVhZHkuIEFzIGxvbmcgYXMgdGhlIFBIWSBpcyBub3Qg
cmVhZHksIHRoZQpkZXZpY2UgY29yZSBrZWVwcyByZXRyeWluZyB0aGUgcHJvYmUsIHdoaWNoIGZh
aWxzIHdpdGggLUVQUk9CRV9ERUZFUi4KCkF0IHNvbWUgcG9pbnQgdGhlIFBIWSBwcm9iZSBmaW5h
bGx5IHJ1bnMsIGJ1dCB0aGUgZGV2aWNlIGNvcmUgbWF5IHN0aWxsIGJlCmF0dGVtcHRpbmcgdG8g
cHJvYmUgdGhlIFVTQiBkZXZpY2UgY29uY3VycmVudGx5LgoKSW5zaWRlIF9fZHJpdmVyX3Byb2Jl
X2RldmljZSgpLCB3ZSBoYXZlOgoKICAgIHJldCA9IHJlYWxseV9wcm9iZShkZXYsIGRydik7CiAg
ICBwbV9yZXF1ZXN0X2lkbGUoZGV2KTsKCiAgICBpZiAoZGV2LT5wYXJlbnQpCiAgICAgICAgcG1f
cnVudGltZV9wdXQoZGV2LT5wYXJlbnQpOwoKICAgIHBtX3J1bnRpbWVfcHV0X3N1cHBsaWVycyhk
ZXYpOwogICAgcmV0dXJuIHJldDsKClRoaXMgbWVhbnMgdGhhdCB3aGVuZXZlciBhIFVTQiBwcm9i
ZSBhdHRlbXB0IGNvbXBsZXRlcywgd2hldGhlciB3aXRoIGFuCmVycm9yIG9yIG5vdCwgaXRzIHN1
cHBsaWVycyBhcmUgcmVsZWFzZWQgdmlhIHBtX3J1bnRpbWVfcHV0X3N1cHBsaWVycygpLgpSZWxl
YXNpbmcgc3VwcGxpZXJzIG1heSBpbiB0dXJuIHRyaWdnZXIgYSBydW50aW1lIHN1c3BlbmQuCgpJ
biBvdXIgY2FzZSwgc2luY2UgdGhlIFBIWSBpcyBhIHN1cHBsaWVyIG9mIHRoZSBVU0IgZGV2aWNl
LCB0aGUgVVNCIGNvcmUKa2VlcHMgJ2xvb3BpbmcnIGluIF9fZHJpdmVyX3Byb2JlX2RldmljZSgp
IHJldHVybmluZyAtRVBST0JFX0RFRkVSIHVudGlsCnRoZSBQSFkgYmVjb21lcyByZWFkeS4gQXMg
YSByZXN1bHQsIHBtX3J1bnRpbWVfcHV0X3N1cHBsaWVycygpIG1heSBydW4KY29uY3VycmVudGx5
IHdpdGggdGhlIFBIWSdzIHByb2JlIGZ1bmN0aW9uLiBJZiB0aGlzIGhhcHBlbnMgYWZ0ZXIKcnVu
dGltZSBQTSBoYXMgYmVlbiBlbmFibGVkIGZvciB0aGUgUEhZLCBidXQgYmVmb3JlIHRoZSBkcml2
ZXIgaGFzCmZvcmJpZGRlbiBzdXNwZW5kIG9yIHRha2VuIGEgUE0gcmVmZXJlbmNlLCB0aGUgUEhZ
IG1heSBlbmQgdXAgYmVpbmcKcnVudGltZS1zdXNwZW5kZWQgJ3VuZXhwZWN0ZWRseScuCgpSZWdh
cmRzLApMb2ljCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
