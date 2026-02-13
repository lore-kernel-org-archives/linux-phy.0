Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDD71EE36A0
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 09:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M9/ezJh3D9VfaQmd5Pr1boNsaYkLnw3YVX/Mt39+N80=; b=cB+cAH9lZ9k3So
	KEebXIqita3PQ1zfDjXuWFaNyKlvCrqJ04rILjpdmxiMrN8ECZGKZD5iJjiG5UJa5cMYVkIotwyI+
	H84RKr0saVxFj+/62oUwra2zcfeIgg5hjoQaimvuMXKxgViV0Z2LuiMjZLIuBugXZTJPjFWHX7+CQ
	EqM9Uu9+iWV3i9ayhf5psBLPG13l9nN4RYUzuH2bCkOO3ypyhltdbswGczN6VQzCEcWidO27jqkx0
	9TTwjbGvO1jGFSXJNkl3M0q5pqAE0s50qqijRF5RUvc49bLBhm1mjyWusiBiVGFdAbbJKMXP9MPh6
	VcWiM2s7JE1yA1yXaXnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqpkF-00000003G5z-20vD;
	Fri, 13 Feb 2026 09:45:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqpkC-00000003G5e-1zKa
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 09:45:50 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61D7E4Xd3043738
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 09:45:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4Y5ANPyeVlTxnxEsw0dAIbgZ+/TVJi5Kaxl/X9EUk8A=; b=fic09R8VZqB6ROXe
	uOgCFUM6uH0lGRWdgNRh+QrJlJRuPyRQHds8mpcDmukl9eOTRoWBdSQFxE0gLD8q
	IZlZX1VvmOZTrJiy6VvewseExRrnqLu8SU9rXHsY+eWI3H7bkRc/TkvPNX6rgEfr
	O2CXidRdsWn7mqxJTySq913FIBx4N1YAvuIWQpZHkly5RaXm/WGxYx3HKiO1rVMH
	x8tGJ/h2W62AOfn3sknXeOMSIPQAnxYVmERpEkv2qsVRmVHnBXTBrlFXBNNl8xMW
	2NdJjOLfP+g4zut06awObsfLgdamePHo6v3eILumT8T/cd0xYXMpckt3lysaBIpR
	uWoVKw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9ps2tarj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 09:45:47 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-89718626897so38955516d6.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 01:45:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770975946; cv=none;
        d=google.com; s=arc-20240605;
        b=Ap64s+l6xHTcTRADQdHUTkYSEdyZ02zzyWIyY7F/SsfBI22yASG0RkF9LpWtjm7XiE
         C9t9qZyOBkUxWhOdBAiFVY2dpKUfuBI6QWpquukshNJHWLJdvoF9O1ePyvBooAx8gUj7
         e/tjrc8VPgtmesfOpGelGvvmsGtvRaS0oHRRkR7qScflD+dWbZaD7ygTLQb2Bk5eJ6oM
         Z3k3KRjOhP6YIhbhVvD16XWOFPuoGGrcuqXbHNjp50e17Fo/MavsOg1HO5YtH+uONJeI
         uKzV+MM4U40ajw8rpzjolpHdQ8nPgwza+0D1ZF6CGRfFyuHJ9I24oMdNrWGiHLsVFI6P
         Swhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4Y5ANPyeVlTxnxEsw0dAIbgZ+/TVJi5Kaxl/X9EUk8A=;
        fh=yrzOaY2eV9a5iJay5BiKkdJle+wDnoz9CWmizSEbacw=;
        b=ZPN7SA+2LmBcNT2k8s4ZWLdIAzhCTJNWfEEMnrfpj24fFLFH/KmsdloO/ICOhpjeUb
         DHARKCj93yiO1+E1mOkR6+yVBiOtfPgpaR+IIPGY++3Dav1AA64YHr7o5ibiIpTmhym5
         uAInSn7GwqKlBDyAPck+tEuKD9dAcQHbMFncp7agwQdxZsrcznfU39j9hvd8tTsZaglw
         VFfCRHFr+NR1W0ZCfy+hLI0QC3FeGNdnRaeol/nMuGp6lYqxL1xVE2yKTxtX9WLNE51S
         xboKCoO2hAsOgpPzq8a5LKujciEfGmlSiAAkpH7XOeqkkIB1twKawp7yByco9VUBO9rm
         WvLA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770975946; x=1771580746; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Y5ANPyeVlTxnxEsw0dAIbgZ+/TVJi5Kaxl/X9EUk8A=;
        b=NorK7gXp+d2QOi2XoKBgv5wHgcPBqfjH2iPsbd+s61YRvnYdoV1fXVnA0RmW3EjhFw
         g7F+GMzTn8VuKnfTq8w3drypFGVXsAkVJJHKGCSRqBy1DKxqIxeOPV+iaSJuHBxMvK0/
         omMfuYnAWBhkesr1vboWtn9jsbohaxaSCgJnLUouMq5BivcgiTYj5Wq08Ll2ZnWMr420
         GaVG4o4uVQHZqxi9aQXhktdV7LJHeTq25/MlzgiumjAkbwd3whwL9Md3Zbkgt5lPYPn0
         qbMNJb6Sv8TX2mop7egntk5/z76r599usCmPabgdlZQKnVu/Yu6Mk/FIGNVRI6ccZJtm
         dWAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770975946; x=1771580746;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4Y5ANPyeVlTxnxEsw0dAIbgZ+/TVJi5Kaxl/X9EUk8A=;
        b=PVK+GYV5srLuEcuNbD7AbTUJ1XN346ASBqntVXgpKnDERdIOiZ/thhKdD9BD+CB7iH
         VgfF9K4i8jeaznxajLrPHPnIR85gQE9eGazqSuMGUbwaCmKC91i9FHKFVS9/MmJ1+zDn
         9wo8Ukd++Nu+oes+IXk99m8yuO4b2oMVDQCVgZ2cOz5WAIYb9G1hfnVA1iVL+5A36dKn
         N/AzmjlPRNp6M+G4eRvanXanOPDWFLR/ztI+zIzda0ydCMpaqI7PASyIY3fG2HMR8dLP
         bI9QXDhPPxpwvpxweXV4zX+Nm6vcl+/eItkXXKRchqM1uLxLI0tU1TzdfYjFdiA6Fasm
         RT1w==
X-Forwarded-Encrypted: i=1; AJvYcCVMBGNnVXriMBgmKwE+IY4plL30HB6Vh3i+tOyWdOMqimNAQVSERhnHPs5qKF/E+fcTjKzONxIOBGg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyEuXGkuuJvAhVYyP2q8HtOWK4RO4bVrzte/M3PwfBbir0ikaLk
	vjxheTvoQ9/V3yfexqPCzAC1a+pC5DKsEQ1dhu1I8lCc46Mw/GjatfsmvwH/Tj2miX4UdTAWA6M
	xyd5EFpuXWjSx4LHKpxhUJIF2BT3pRPHgAr/VnB3+40OrnCjYsypFO0Sf74sOe/YZ7vblsq0GY4
	XMhAgs4bNcs4COQgqoUE7loTHeAKeQAmDrtnyfYtQel7U=
X-Gm-Gg: AZuq6aLepOfjYVAL1viQGaMZDGMRsgQBjxFxSvuNV1eiKwgKM+NaFc/n4YjVcunsRCw
	7xkEAeHNlPdAKpx7xfUuLkmNFa2l9QEuYjEeOPtVQPVie+qN0l3SdYTeFeqciIBbywPq6qfh6GU
	YhZOjNmQKdwtrLjzyI2mnIuBrMxsI/WNzowbKRW5AYl7GyInHyB3h6RCtdF1tHshETExVxlkBPY
	0lTYlrjIsGOU4TiqPyPVk+yhvvJ4dE8W9xQxaEt
X-Received: by 2002:ad4:5ecb:0:b0:892:70a5:3bfc with SMTP id 6a1803df08f44-8973623f2d5mr13974946d6.63.1770975946434;
        Fri, 13 Feb 2026 01:45:46 -0800 (PST)
X-Received: by 2002:ad4:5ecb:0:b0:892:70a5:3bfc with SMTP id
 6a1803df08f44-8973623f2d5mr13974716d6.63.1770975945971; Fri, 13 Feb 2026
 01:45:45 -0800 (PST)
MIME-Version: 1.0
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
 <20260205160240.748371-6-loic.poulain@oss.qualcomm.com> <aY7pvakkOnaYsd5p@hovoldconsulting.com>
In-Reply-To: <aY7pvakkOnaYsd5p@hovoldconsulting.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Fri, 13 Feb 2026 10:45:32 +0100
X-Gm-Features: AZwV_Qgp2sXMbTLoidW0oZj9IwUjAleKMG8enw0mdOJ7DRvGHPPQXpM5MMV7gWc
Message-ID: <CAFEp6-3yk3sPXj+hGuWvAFsFJAXjH4kWLV8k_5_v9Hax0XxaOg@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] phy: qcom: snps-femto-v2: Fix possible NULL-deref
 on early runtime suspend
To: Johan Hovold <johan@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com,
        neil.armstrong@linaro.org, konrad.dybcio@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: L47QKZj6mGv2sDBv5PJsOx-L3fVA7Gia
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDA3NSBTYWx0ZWRfX79jNHpLkpvGK
 HGxb9cGnvHimPOXjf4pw3p822zMOfgDfn7MratorASKlEB3J9xG9GvPaCESm4X8LAD3J5n6Ov0y
 KDksJWVLdymOVWqGPwtbhT2rOO47RJoDMCq/xUE61sEP18tLTa5g/1u9Nhmj5FVBkG/WQX9xway
 +wgLg7Wqm3jOdkxry2z16dq39iVQbo/IJgpJcDMiZ/Du+R0wn/ASahbykLgnYSQtdlFCIy/nUyi
 w7VMoQd8wStppCMwe2K3C9njZgLprLAr/+68Q1uTccYOSXCP5dDdOIwOR3JJErDjZ8Xy0Dljx3+
 z16EbSg04u5XjgpQ45mLG3Z1p8+LNBl41TKFrzUPfnsCbMUdeLqK7QrBMHIGZMccMVRKaFkq/1o
 UU8t4kI7gbnMGEyzyy1lGA38AHVu/4atsMCl25/S2kvwVsQ6CsW8uir+6x5GQbvo/e/XL4os8eZ
 hOajOHX8f/1MuZy6ODg==
X-Authority-Analysis: v=2.4 cv=LoOfC3dc c=1 sm=1 tr=0 ts=698ef2cb cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22
 a=GgsMoib0sEa3-_RKJdDe:22 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=stOHKsqbLDPUz7k-wIgA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: L47QKZj6mGv2sDBv5PJsOx-L3fVA7Gia
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_01,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0
 malwarescore=0 adultscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_014548_522504_92CE82FC 
X-CRM114-Status: GOOD (  14.11  )
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

SGkgSm9oYW4sCgpPbiBGcmksIEZlYiAxMywgMjAyNiBhdCAxMDowN+KAr0FNIEpvaGFuIEhvdm9s
ZCA8am9oYW5Aa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBUaHUsIEZlYiAwNSwgMjAyNiBhdCAw
NTowMjo0MFBNICswMTAwLCBMb2ljIFBvdWxhaW4gd3JvdGU6Cj4gPiBFbmFibGluZyBydW50aW1l
IFBNIGJlZm9yZSBhdHRhY2hpbmcgdGhlIGhzcGh5IGluc3RhbmNlIGFzIGRyaXZlciBkYXRhCj4g
PiBjYW4gbGVhZCB0byBhIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSBpbiBydW50aW1lIFBNIGNh
bGxiYWNrcyB0aGF0Cj4gPiBleHBlY3QgdmFsaWQgZHJpdmVyIGRhdGEuIFRoZXJlIGlzIGEgc21h
bGwgd2luZG93IHdoZXJlIHRoZSBzdXNwZW5kCj4gPiBjYWxsYmFjayBtYXkgcnVuIGFmdGVyIFBN
IHJ1bnRpbWUgZW5hYmxpbmcgYW5kIGJlZm9yZSBydW50aW1lIGZvcmJpZC4KPgo+IFNvIGhlcmUg
dG9vLCB0aGUgY29tbWl0IHNob3VsZCByZWZsZWN0IHRoYXQgdGhpcyBjYW5ub3QgcmVhbGx5IGhh
cHBlbiBpbgo+IHByYWN0aWNlLgoKVGhpcyBoYXBwZW5lZCAgaW4gcHJhY3RpY2UgaW4gdGhlIHFj
b23igJFxdXNiMiBQSFkgZHJpdmVyLCB3aXRoIHRoZSBzYW1lCmNvZGUgZmxvdy4KQnVnOiBodHRw
czovL2dpdGh1Yi5jb20vcXVhbGNvbW0tbGludXgvcWNvbS1kZWItaW1hZ2VzL2lzc3Vlcy8yMDgK
UGF0Y2g6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFybS1tc20vMjAyNTEyMTkwODU2
NDAuMTE0NDczLTEtbG9pYy5wb3VsYWluQG9zcy5xdWFsY29tbS5jb20vCgpJIGtub3cgaXQgbWF5
IHNvdW5kIHVubGlrZWx5LCBidXQgdGhpcyBjcmFzaCBoYXMgYmVlbiByZXBvcnRlZApzZXZlcmFs
IHRpbWVzIGR1cmluZyBib2904oCRc3RyZXNzIHRlc3RpbmcuIEkgaGF2ZW7igJl0IGludmVzdGln
YXRlZApkZWVwbHkgZW5vdWdoIHRvIGRldGVybWluZSB3aGV0aGVyIGl04oCZcyBjYXVzZWQgYnkg
YW4gdW5mb3J0dW5hdGUKcHJlZW1wdGlvbiB3aW5kb3cgb3IgYSByYWNpbmcgQ1BVLgoKSSB0aG91
Z2h0IHRoZSBzZXJpZXMgd2FzIGFscmVhZHkgZmFpcmx5IGNvbnNlcnZhdGl2ZSBpbiBpdHMgd29y
ZGluZy4KVGhlIHRpdGxlcyB1c2UgdGVybXMgbGlrZSDigJxwb3NzaWJsZeKAnSBhbmQg4oCcdW5u
ZWNlc3NhcnnigJ0gdG8gcXVhbGlmeSB0aGUKY3Jhc2hlcyBvciB1bmludGVuZGVkIGV2ZW50cy4g
SSBjYW4gc3dpdGNoIHRvIOKAnHVubGlrZWx54oCdIGlmIHRoYXQKYmV0dGVyIGNoYXJhY3Rlcml6
ZXMgdGhlIHNpdHVhdGlvbiwgYnV0IHRoZSBpc3N1ZSBpc27igJl0IHB1cmVseQpoeXBvdGhldGlj
YWwuCgpSZWdhcmRzLApMb2ljCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
