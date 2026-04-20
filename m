Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4626F5A8AB
	for <linux-phy@archiver.kernel.org>; Mon, 20 Apr 2026 18:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTgEw+EvK4iK552LG4o5H7+UMOIKpuQ7/AjRF4ZLWtQ=; b=RPQnAV8+78XmB7
	hY56eDx7WBfFOFVwYMBuCjqDuEOZXwYMPL8dIREid4e7zXLy/nAc1UUy99WavdFrOqpjIdOxTzPQu
	KkzzT0gJ/MyYOYIgTC8Kt4GNpqE2yasEcvjH4sBhjom4K8xe53Y+nxbHgXTVCrYCOueQQXJYK2fEQ
	ds0kyzO3I9/ZT5og20hx4vBr8y71hZhZtx7mrfRrltQJ/I+CLI5Qneziu+x4iLl+9P53VHa/HzvGr
	08QgPqYlSR38et6zzq+g3j9oFppCBLdYXjAsDtqLSPuEEr8+9acTQRtaK8GjCI6uOMIoDNzZA4WCm
	bchrZRxxBKJCsSif4HLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEtPk-00000007Y8I-1fKE;
	Mon, 20 Apr 2026 18:32:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEtPi-00000007Y7s-1dLo
	for linux-phy@lists.infradead.org;
	Mon, 20 Apr 2026 18:32:07 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63KFLs1d2281735
	for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 18:32:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MxNLE1MroW8m7Sdy5DUKFAIpmZj77ZEaz/yED/SLZB4=; b=oveS3xKe4loKoJ2d
	TPreMGrVp6gFKcGH8+y1lMRDidbu67Eku0LfVNnby24DZi0miSHxxGEojiLBh9nV
	8F/eaQPzDgJHIqOLGir7oNwkL4aypNjpwmfN9hiMBT260fHdG5xqxR8lU6GNCTZ3
	WHPqrDG9B1zL5l4PJo3h2wd0NPw564mvOhij9K+7csCfhUJU+A5bWLDsSlpqqtCu
	H6nj+niD3ht6oDTUIxC67JN1G5Y29/VY2pwGE9Glh8MEdqJx7G3NEi2LwmTIOtCN
	MzgE+EPK41fvg+eyMVatnLFA2XQ1qPzkzqq9YKRcuDSpnnj5PfXchMzoGNFY9+MM
	P/YekQ==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dnh59a48e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 18:32:04 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-6101726c594so1370754137.0
        for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 11:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776709924; x=1777314724; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MxNLE1MroW8m7Sdy5DUKFAIpmZj77ZEaz/yED/SLZB4=;
        b=iKc5cwJT3DMHtxwQMWdys5j+xgVzsV4UMoJDkvqdPbPlElkhyLbyxIigB7lzsGpvMF
         6K7GjitXx5fXcEiy/qRsX2oqeO6Nf/DCMHaH7GmgkT5OyPo15IDt0Yfp9l7hw1bqI3UK
         ikWafE250acGfbp1UKhBaoLy4Ok9JDAyJ7jE6f/ZXj0QAr2bOdNFojhiJCguJUEvAhPY
         PnSyaT/uLHOfcgSSYQdIqtONshCaQC1NKM9OulC6ErCquQAqiLSkmRFiAB1MkrWQXo7t
         Tp061c1prtfP14/D12wZmlso80tuaHZhzWBH+BNblqa4cs9a3vKnZEQHSDazqqri7I1v
         ds7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776709924; x=1777314724;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MxNLE1MroW8m7Sdy5DUKFAIpmZj77ZEaz/yED/SLZB4=;
        b=bAwlNFvUhiewCS+ZauatO/gH02soEE4gFQirIm1DBbfnTvw2LPvomYWvvjXoQy6g9q
         iHS7LdHVLNJ7GhsbkguFelTPLuHwu3r93T5RGVUG3UX/LHgweGXWVk62ix1dXUen151i
         4AyH/ppUn6OUdZN8es4BmPhaggCMQuJgJDDi3vuzflGUfqEDE7i8gbbAPy8v8/6/SqUx
         aFg6lzX7ywK3hfHyEh7CGCsqzgqxSqEjbdh9DDFOpz2BqRGIicFevgSJ7FBRoBU5Zr8R
         vR0IR0nbwBPUuBvgIBiobqXNmLgYXCjHixBbT/7PKc8DSWsX0It1otgnsGk0VQgHZYut
         ZK0A==
X-Forwarded-Encrypted: i=1; AFNElJ8nu6rdRn7FR8oG2TcGPu0LlcTJ9qL8H1m0BHCImHOXya0E0f97f2Lo+FPV0n6M6TDwA3DcYoZRFbg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKc4EeXGDyt0Nb0A1bjFf0OYRGjeFdiizTQbmA/O2Nv6Aq+QZv
	EOaWfBBTH34hc9+3+5WzSi112xxeO7oVf257wPfHiosyg2rQ85WsSlNTDVt1Y/7CjXU5mbLv0of
	4CpXPOqRJ2YT3dr5LZXIn0vNGF/zLOhzc4Z+N1shJ6ugCdk4KEw8j1dX4783KoybTOvmK
X-Gm-Gg: AeBDiev6fKYI5sTFPEaT31y4gL+zgPcH44SaiUkTiObWW0SqzAlgrCqhMXXJyQO0sU2
	PkOHtuwK703lPy8vizO/wYtQRW8WvD/pkmF5AWwaMFbwtD0bqnOkcQjVH76A0KIGd2arjhA1G6Y
	eA63o6YxQjUy+ot7k0FD3j4vMZDRgcRKbvI4xBaxqkXbNrtHBfrVOZEuFEkd4WUSki1g1Rb9wAf
	hQXBzz5J7S/wYRShgCYzabNZW0/RTwJbWG85M85aP13DceoRSuLB4lQ3Kd+/gRUiapfn5oL2Q5O
	ZlpmAo2EnP4lGcSwQ4PLWb++7jfSbE0tvv+JX8GwZetSh+crjU2FP4lZSfnVuPXGh2l743Se0xM
	jgR7oXahRwKhsyeQDwqTMkJpPc+95uJLM6Kk7DZXNkHXOtXhWkb0yWUmnVfJlYUJntwukAlcqAD
	KWSyoPym5IPlqVohZOJfynuoChk8wNx/EfXWX+Lm8oMvXFbw==
X-Received: by 2002:a05:6102:956:b0:608:a960:c858 with SMTP id ada2fe7eead31-616f68c9ae6mr6129607137.8.1776709923998;
        Mon, 20 Apr 2026 11:32:03 -0700 (PDT)
X-Received: by 2002:a05:6102:956:b0:608:a960:c858 with SMTP id ada2fe7eead31-616f68c9ae6mr6129570137.8.1776709923385;
        Mon, 20 Apr 2026 11:32:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a41d85f704sm2119762e87.44.2026.04.20.11.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2026 11:32:02 -0700 (PDT)
Date: Mon, 20 Apr 2026 21:32:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
Subject: Re: [PATCH v3 1/2] phy: qcom: edp: Add eDP/DP mode switch support
Message-ID: <vywmtt6p3itkrbnucahzvsh6hpwqbno7al5h5zrqdcf3cejyto@pr4of7o3zdeo>
References: <20260302-edp_phy-v3-0-ca8888d793b0@oss.qualcomm.com>
 <20260302-edp_phy-v3-1-ca8888d793b0@oss.qualcomm.com>
 <islxoe4wbqx5pl54difetdcl5lrqvfd5ysbaicxz5lv235sfmd@6hwrq3rmqx7c>
 <fffa03f6-82c5-4d87-9a41-19e6f82ec39b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fffa03f6-82c5-4d87-9a41-19e6f82ec39b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 91iwnQCG92c_A5_K_BTFjkw9nG_l-TCD
X-Proofpoint-GUID: 91iwnQCG92c_A5_K_BTFjkw9nG_l-TCD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIwMDE4MCBTYWx0ZWRfX3hgF0Zvj32Xa
 l+guYuptzxlyhnadT2l5XTqZR2fXtQgzFA5vL2F7uo+Uh2m3cpI4oAG49gyblZ22BxGiNpEclx3
 1p6YdCkrKPLLh8mszhH0ULUaa/c3/nl07rPn3Bc430L4+jN1q8BEO2clvpwraJyPsD6ta1VfSbO
 k6I+4LgOce6Ig1lcWG4Cwz55myHpQK3ltpKwaATto6DmeiMvqg2b/QDgul3IpfjgObprnpEBaMd
 YQHa2UQHekwZwKimwF8JJYV1B8itpHrsW5rg7CsFIMAETicX1ILLEOpE1nytoZCsFBPYslMaYp/
 mz73sI9stn/2J83i3GW3B/oLtbOWUMIQMoXLl4tooIKL604X8ah2J4LLhLF4qAA+K2QwP7in5jo
 db35vMkdUNwvU6f1Fr9uex82PYe6b/qESNr2VMa4LNLBnnz+pVzZz3jM5E+W3GqN91Yq9Glf4LA
 0gxoq/lFNgRdA+rkCCA==
X-Authority-Analysis: v=2.4 cv=HNrz0Itv c=1 sm=1 tr=0 ts=69e67124 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=E1eVf6o5s5qXEWiT5LcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_03,2026-04-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 phishscore=0
 impostorscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604200180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_113206_602321_ABA0A908 
X-CRM114-Status: GOOD (  33.80  )
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

T24gTW9uLCBBcHIgMjAsIDIwMjYgYXQgMDg6NDc6MDlQTSArMDgwMCwgWW9uZ3hpbmcgTW91IHdy
b3RlOgo+IAo+IAo+IE9uIDMvMjAvMjAyNiAyOjM2IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3Rl
Ogo+ID4gT24gTW9uLCBNYXIgMDIsIDIwMjYgYXQgMDQ6Mjg6MjlQTSArMDgwMCwgWW9uZ3hpbmcg
TW91IHdyb3RlOgo+ID4gPiBUaGUgZURQIFBIWSBzdXBwb3J0cyBib3RoIGVEUCZEUCBtb2Rlcywg
ZWFjaCByZXF1aXJlcyBhIGRpZmZlcmVudCB0YWJsZS4KPiA+ID4gVGhlIGN1cnJlbnQgZHJpdmVy
IGRvZXNuJ3QgZnVsbHkgc3VwcG9ydCBldmVyeSBjb21ibyBQSFkgbW9kZSBhbmQgdXNlCj4gPiA+
IGVpdGhlciB0aGUgZURQIG9yIERQIHRhYmxlIHdoZW4gZW5hYmxlIHRoZSBwbGF0Zm9ybS4gSW4g
YWRkaXRpb24sIHNvbWUKPiA+ID4gcGxhdGZvcm1zIG1pc21hdGNoIGJldHdlZW4gdGhlIG1vZGUg
YW5kIHRoZSB0YWJsZSB3aGVyZSBEUCBtb2RlIHVzZXMKPiA+ID4gdGhlIGVEUCB0YWJsZSBvciBl
RFAgbW9kZSB1c2UgdGhlIERQIHRhYmxlLgo+ID4gPiAKPiA+ID4gQ2xlYW4gdXAgYW5kIGNvcnJl
Y3QgdGhlIHRhYmxlcyBmb3IgY3VycmVudGx5IHN1cHBvcnRlZCBwbGF0Zm9ybXMgYmFzZWQgb24K
PiA+ID4gdGhlIEhQRyBzcGVjaWZpY2F0aW9uLgo+ID4gPiAKPiA+ID4gSGVyZSBsaXN0cyB0aGUg
dGFibGVzIGNhbiBiZSByZXVzZWQgYWNyb3NzIGN1cnJlbnQgcGxhdGZvcm1zLgo+ID4gPiBEUCBt
b2Rl77yaCj4gPiA+IAktc2E4Nzc1cC9zYzcyODAvc2M4MjgweHAveDFlODAxMDAKPiA+ID4gCS1n
bHltdXIKPiA+ID4gZURQIG1vZGUobG93IHZkaWZmKToKPiA+IAo+ID4gU2VwYXJhdGUgcXVlc3Rp
b246IHNob3VsZCB3ZSBleHRlbmQgcGh5X2NvbmZpZ3VyZV9kcF9vcHRzIHdpdGggdGhlCj4gPiBs
b3cvaGlnaCB2ZGlmZj8gSXMgdGhlcmUgYSBwb2ludCBpbiBwcm92aWRpbmcgdGhlIGFiaWxpdHkg
dG8gdG9nZ2xlCj4gPiBiZXR3ZWVuIGxvdyB2ZGlmZiBhbmQgaGlnaCB2ZGlmZj8KPiA+IAo+IEVt
bSAsaSBoYXZlbid0IGZvdW5kIGFueSBwbGF0Zm9ybSB1c2luZyBoaWdoIHZkaWZmIHNvIGZhciwg
YW5kIEknbSBub3QgY2xlYXIKPiBpbiB3aGljaCBjYXNlcyBzd2l0Y2hpbmcgYmV0d2VlbiBsb3cg
YW5kIGhpZ2ggdmRpZmYgd291bGQgYmUgbmVlZGVkLgoKRnJvbSBteSAobWF5YmUgaW5jb3JyZWN0
KSB1bmRlcnN0YW5kaW5nIG9mIGVEUCBCLjMsIHRoZSBoaWdoIHZzIGxvdwp2ZGlmZiBzZWxlY3Rp
b24gc2hvdWxkIGJlIGJhc2VkIG9uIHRoZSBjYWJsZSBsZW5ndGguIAoKPiAKPiA+ID4gCS1nbHlt
dXIvc2E4Nzc1cC9zYzgyODB4cC94MWU4MDEwMAo+ID4gPiAJLXNjNzI4MAo+ID4gCj4gPiBJIHVu
ZGVyc3RhbmQgeW91ciB3aXNoIHRvIHBlcmZvcm0gYWxsIHRoZSBjaGFuZ2VzIGluIGEgc2luZ2xl
IHBhdGNoLCBidXQKPiA+IHRoZXJlIGlzIG9uZSBwcm9ibGVtIHdpdGggdGhhdC4gQ29uc2lkZXIg
dGhpcyBwYXRjaCByZWdyZXNzZXMgb25lIG9mIHRoZQo+ID4gcGxhdGZvcm1zIChJJ20gbG9va2lu
ZyBhdCBLb2RpYWsgYW5kIFNDODE4MFggYXMgdGhleSBnZXQgdGhlIGJpZ2dlc3Qgc2V0Cj4gPiBv
ZiBjaGFuZ2VzKS4gSXQgd291bGQgYmUgYWxtb3N0IGltcG9zc2libGUgdG8gc2VwYXJhdGUsIHdo
aWNoIHBhcnRpY3VsYXIKPiA+IGNoYW5nZSBjYXVzZWQgdGhlIHJlZ3Jlc3Npb24uIEknZCBzdWdn
ZXN0IHNwbGl0dGluZyB0aGlzIHBhdGNoIGludG8gYQo+ID4gc2V0IG9mIG1vcmUgYXRvbWljIGNo
YW5nZXMuIEUuZy4gdGhlIEFVWF9DRkc4IGlzIGRlZmluaXRlbHkgYSBzZXBhcmF0ZQo+ID4gY2hh
bmdlLiBXcml0aW5nIHN3aW5nIC8gcHJlX2VtcGggdGFibGVzIG9uIEtvZGlhayBhbmQgU0M4MTgw
WCBpcyBhCj4gPiBzZXBhcmF0ZSBjaGFuZ2UgKG9yIHR3bykuIFN3aXRjaGluZyBlYWNoIG9mIHRo
ZSBwbGF0Zm9ybXMgdG8gdGhlCj4gPiBjb3JyZWN0ZWQgc2V0IG9mIHRhYmxlcyBpZGVhbGx5IGFs
c28gc2hvdWxkIGNvbWUgYXMgYSBzZXBhcmF0ZSBjaGFuZ2UsCj4gPiBzbyB0aGF0IGluIGNhc2Ug
b2YgYSByZWdyZXNzaW9uIHRoZSBpc3N1ZSB3b3VsZCBiZSBlYXNpZXIgdG8gaWRlbnRpZnkuCj4g
PiAKPiBUaGFuayBmb3IgcG9pbnQgdGhpcywgd2lsbCBzZXBhcmF0ZSB0aGUgY2hhbmdlLgo+IEkg
bW9zdGx5IG92ZXJsb29rZWQgU0M4MTgwWCBoZXJlLCBzaW5jZSBJIGFzc3VtZWQgaXQgc2hhcmVz
IHRoZSBzYW1lIFBIWSBhcwo+IFNDNzI4MC4gSG93ZXZlciwgdGhleSBhcmUgdXNpbmcgZGlmZmVy
ZW50IFBIWSBzdWLigJF2ZXJzaW9ucy4gV2lsbCBhZGQgcHJvcGVyCj4gc3VwcG9ydCBmb3IgaXQg
aW4gdGhlIG5leHQgdmVyc2lvbi4KClRoYW5rcyEKCj4gPiA+IAo+ID4gPiBDYzogc3RhYmxlQHZn
ZXIua2VybmVsLm9yZwo+ID4gPiBGaXhlczogZjE5OTIyM2NiNDkwICgicGh5OiBxY29tOiBJbnRy
b2R1Y2UgbmV3IGVEUCBQSFkgZHJpdmVyIikKPiA+ID4gU2lnbmVkLW9mZi1ieTogWW9uZ3hpbmcg
TW91IDx5b25neGluZy5tb3VAb3NzLnF1YWxjb21tLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICAgZHJp
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMgfCA5MCArKysrKysrKysrKysrKysrKysr
KysrLS0tLS0tLS0tLS0tLS0tCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDUzIGluc2VydGlvbnMo
KyksIDM3IGRlbGV0aW9ucygtKQo+ID4gPiAKCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
