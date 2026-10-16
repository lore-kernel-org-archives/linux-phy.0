Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85889CC6B38
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 07:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MEfKOYHy7FV9+tpfejqecUHujHcZjpWbi5ZgylRGVIQ=; b=NlutTfkl/wKrrW
	/vEEMgO0WHpJho2foGt9ARtAEEYXVeb8AjbrnTSnNtetRnaHjaZgcAV4HWeGMwFz2o1lKnq+UUTW+
	2D620ZviDvvOFUsE8KCMPd7nE9vafYbOyx6xOkzTvElkzmVaYdp4a+AMR/r+HzgHFmqt9Qa9E2VrI
	Re1vHpKULxjlCYgPUUl2C6oCOfwS2jeXA478rGIsG/8HsKDjVLTFwfwTyqnwblqwLyqR1qZ+i+6kU
	DuvPDq1KZEHjab6TC4UtvAtywOI9p2w7H8Eqfm0FLc4LCWJ4Bv7msFZPiGPe2NLR54ZymRbNt6urQ
	p1dW7CIY6ao2kBEGjD2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHcni-00000002HOr-0qqI;
	Fri, 16 Oct 2026 07:56:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHcnf-00000002HNd-2jgx
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 07:56:24 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69G2ZY0a406092
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 07:56:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aKjHJ1pVqYFFJBRsIMQ60p5qHGl1vtujYesr+jTvVXI=; b=hzYyKaVeBM0t6oN4
	OqbN14OwDGvh7/Gbx8Z6JXtEVWmqZ/V6E02Jytm44sRuu+SYlIYXZgU7tYeeyIWq
	BewuE2ei2LoXTKh9cydz7afjbXT+jI/rOm9HqUItKCdC9QiIt/2v0VXogxYvHjUE
	N+z5NR4yoS4L+16yWKBE5ADTaH/GPPppx5PKaSp7wmpRSSckQg/Rk5BC8SCgSEdp
	kfpBzQAwwtODE3Zt/iVQaqb9Ge2u+IpQKyNpFoNU2JVdoCVvIDqv35G/WFwhNs/q
	GSkDxzBK4gEG4SksIDGzbE8a3uJAXpSqWylygxkxwSjwix13qtaDykg0Rif+uFbQ
	4H3Usg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hb3sa2p8f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 07:56:21 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93a1de6d5c3so1371893185a.3
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 00:56:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792137378; cv=none;
        d=google.com; s=arc-20260327;
        b=Ne+Rr3N/rZPwbKkfFclCFtc6zPTa2k2Jk1LbasxqlfL6GwgLrMDintEgkab0oF3zSf
         qhxmjTL+2gx3Md0LRj/u5zIyCLeDDnufpB9HwXp+03gfuG9nDHRGYoD3N1z0m+mctBAP
         yLIKWcHZf52OQtuAc+bKORCOt0RW1AVsxtrCZQeYCmGfjvJ2fZsz/dBfJjsDw8b949qN
         dKJiV/YcvbBafDSZ3OJkfP+pPgepof/eTq/9AK7g/zPAsp6YZrGFUaArEZbp+Dp/beCI
         PhVx1aez3B4vq0UUc4Nd1Lb6CA+t1iEBwPumgO+JdyLBWb8FmSdVXbD0CrSY2o2mgeIr
         BE8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=aKjHJ1pVqYFFJBRsIMQ60p5qHGl1vtujYesr+jTvVXI=;
        fh=VMCVePH5wP2+14vM0J40pzXktFDtp4njHvCmLtWFbqI=;
        b=gaUWAPTVnwt7vhJG9fnODJPMEyer9TUBYFEjnHiHpgkn5WMI1ar3UTcO6d/P/P+VgV
         CZj4/5UnnRSeoKSl3PcDOHIc4D/n9F1vP3MO4swF12HiUH5N0YbxNIiOViA44hK3RJYe
         4MjCCmLUVT3gKyp9iXUB2jkwGQ9vyp4eNLtnUz9kY+A4H2Xzt6mR7/wDTaTc4dlrwCFv
         SY6LrVncgGAREbD0KqPeVjftJWbJiqeV5Q0aZA8vlTLDZzwNQp8t5it1xur19uLcsNga
         pn9/Xx+PakT5bNPJZR4yFaNzhYF0/sidMHIdmCB8XW1rqA38LRtoWr4+rAAOL3DWZekN
         tTDA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792137378; x=1792742178; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=aKjHJ1pVqYFFJBRsIMQ60p5qHGl1vtujYesr+jTvVXI=;
        b=P/0B1lOP9nTsU+G/HzlAmFA2ikgVrxGeT6WFt6lLrHBebQXAVyf3ANExuHhpkn0Xih
         WpJVjhYgTOahjbxsl13rr1uMwqvTVOYJrcwL7Yl1UMlmLknHWPeuiwZpOteh3WBKKi/0
         DYDILWHPkyn2dyLbrAy1IoKh5ekWe7entnZvNOKE8SKewZQvKnSTy2jYWa7xGVCxgxdQ
         PppSvOKZKof8kN0ErnhtThA7pAOzGRNKrt5wR8K2Q/wjjvrxig074gV1E+mzKYk1WM4m
         TJGNVAZSwRSc/Uxm3t2woQ89n6jHTLmCKv2wXEwNG3SuwIS8HLXL5SLtbURmQA0vWkdz
         8XOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792137378; x=1792742178;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aKjHJ1pVqYFFJBRsIMQ60p5qHGl1vtujYesr+jTvVXI=;
        b=BxFn0zkOh5QcdlVh1CPHUmbPivNA6Br49Sv8o9ZiYucsbCTgoAoqFMhvjPxNfqUOWm
         ZDh0z9SFvHUYWicrpayI3iqPlsGR6BGQBLBCaMGcQ9mdy7lUiG1SlugxPferVgPeng3G
         mGu+enZ5yGp/eoMY7m1/D1uoViXHu/bRfCfHnlNcHOjWGL7VI2wsGhPJoQSpMlNgDgYY
         fumyhCEI6zKrSTLJv9JegTirXhw+TU2kHWmLKzoHQzAvXMofvFPbAagUNpyBerHN/zF/
         w9f9O8mfcdGuci9SAo4NLAV2wl4dzcQAVZNp9YiRWD2xRWcNqHepnZuACYD+c059K+XO
         Wdjg==
X-Forwarded-Encrypted: i=1; AKwUvBw0HnS6Ov0YVInCdVuoFbAcCaHQujATVtuY+Z1GApEXoboJ1iew5oIEOaA5Iid0A2j6EDzsKXP075U=@lists.infradead.org
X-Gm-Message-State: AFq9FYKZ2EAeJeisoX9iTB5VZ1R8WzG3z2h9o8dWgd2BNjk8FCHiw0Bd
	idrXwZyduQDPGfQ2m0PVyWh1e3O/SUGdjaxlkn2tAoSeZa96LYxl5YwkOeAar/Wf4MCmrTeZ1nT
	9/AANCzHl3mz1xWS9Tzczi5z53a7IjhVXy3UzHDQXBhtTuEMocWipRiSWzXVIUrKu+NUYb/8AeD
	Xv0Ehm/ZEw7gM3EBITpzubfXoRjIigPIRsgfLPwgcoqYk=
X-Gm-Gg: AYBFou0kd3vg+w9ycMfFOtHhztKkRKU9YDOfwdnkk9dtpE+10PORhJijy6B0LPG7A7V
	d+dGkriWNnSdJDVtf9PgoUsWDvwfMZCQXLXySAsnIgEtzXkHifeELCp1TtC1Z+dMP7iP6q5Xhr2
	HSuLTp47IbByz4DnS087GAT1u3Ck8ZIX/mwZ39EbInaf/fc7L8GWJmyg0vsOC5J7vz+iahORVPs
	6lD8enqkQ0nkHCD/JQFfhpowg1/30BShLJ2qNH8oDmuMz0a//LkwL9JthIsup4CSZZ35sdNv9mS
X-Received: by 2002:a05:620a:3947:b0:93e:6325:ae6d with SMTP id af79cd13be357-93ebd248dd9mr3909709785a.40.1792137377698;
        Fri, 16 Oct 2026 00:56:17 -0700 (PDT)
X-Received: by 2002:a05:620a:3947:b0:93e:6325:ae6d with SMTP id
 af79cd13be357-93ebd248dd9mr3909706785a.40.1792137377058; Fri, 16 Oct 2026
 00:56:17 -0700 (PDT)
MIME-Version: 1.0
References: <20261015-x1e-cphy-rfc-v1-0-1f3fa9af940a@gmail.com> <20261015-x1e-cphy-rfc-v1-4-1f3fa9af940a@gmail.com>
In-Reply-To: <20261015-x1e-cphy-rfc-v1-4-1f3fa9af940a@gmail.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Fri, 16 Oct 2026 09:56:06 +0200
X-Gm-Features: AclHuK9EtofJ3KdOY7tsLgDR7QBNZwZtJcvmiZFhadgSBrUvuUDEDEKnQ2RLZCs
Message-ID: <CAFEp6-0GrFoMFe8kqhkOdvf5_XkuZG_AmrjTMxxfBABda7132A@mail.gmail.com>
Subject: Re: [PATCH RFC 4/4] media: qcom: camss: Configure C-PHY through the
 PHY API
To: geocausa@gmail.com
Cc: "Bryan O'Donoghue" <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDAzMSBTYWx0ZWRfX+4qF8L2Gy9ln
 ohk52y7D1IOJqlov3Wb7OgG31dLa00NLec04d9HZ5hWY0DTWEbwXhACbP5femkm6FUG5GlWtiaA
 0wmbRW4x9/mc+61fNiQ3fmXESqRS7P8=
X-Proofpoint-ORIG-GUID: gzG2nVVXxFA2ATF4kmNgRTyYOeMiGiGS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDAzMSBTYWx0ZWRfX1ZBw6v8nVFtl
 jsH20JpetxGyCzY030GZkP1kYgl1yMPxsnRDzLeGfnxAEMqErJcqHntOjSEAbQ7BzFYEA3o+j/A
 fxs2lrVRNU/HCap1VDco8MsyK4khddNsxE4fSGrgrr4uKKKfz3Rzk9Tc0CMFeGS0RLtEhOVaWc+
 vou/tmV8IAIZNF0OA9gWblk0Rg+X3wWrSMoPe/rDhhMzFao9PFbggzevzQnD88oT9ZQeGqIDFSR
 0uNrkYnwCgwXmhLti0z9Gdr6/enzDPya8f+JhEgBFNhlCKLyDhafh7o+pFEWzxTOVSKA35xjG0I
 njvZA8I4SzfC1BPt0XNTHmAWXWLOyIPfG21kCuK0mh4GOe2mDzuuIqfF9Xb8Jx8foj3JCYfNbP9
 pY3r/9eKP5DGHEyEcatpA7QinrTJd0G1YlVO5OXI5S7okFqv0FkdzQ0JSCPESbGnsGjwFkcP4gB
 Nf7aaRl0cRR14eIE8gg==
X-Proofpoint-GUID: gzG2nVVXxFA2ATF4kmNgRTyYOeMiGiGS
X-Authority-Analysis: v=2.4 cv=AN0XGc5Z c=1 sm=1 tr=0 ts=6ad1d8a5 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=3WHJM1ZQz_JShphwDgj5:22 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8
 a=jTXrqqeG4OIbzDD8fVYA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-14_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610160031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_005623_825084_E298D283 
X-CRM114-Status: GOOD (  22.38  )
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

T24gRnJpLCBPY3QgMTYsIDIwMjYgYXQgMTI6MjDigK9BTSBHZW9yZ2UgTmVhY3N1IHZpYSBCNCBS
ZWxheQo8ZGV2bnVsbCtnZW9jYXVzYS5nbWFpbC5jb21Aa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBG
cm9tOiBHZW9yZ2UgTmVhY3N1IDxnZW9jYXVzYUBnbWFpbC5jb20+Cj4KPiBXaXRoIGEgUEhZIEFQ
SSBDU0lQSFksIGNzaXBoeV9zdHJlYW1fb24oKSBhbHdheXMgYXNrcyBmb3IgRC1QSFkuIEFzayBm
b3IKPiBDLVBIWSB3aGVuIHRoZSBlbmRwb2ludCBpcyBDLVBIWSwgYW5kIHBhc3MgdGhlIHRyaW8g
Y291bnQgYW5kIHRoZSBzeW1ib2wKPiByYXRlLCB3aGljaCBieSB0aGUgVjRMMiBjb252ZW50aW9u
IGlzIHR3aWNlIHRoZSBsaW5rIGZyZXF1ZW5jeS4KPgo+IEFzc2lzdGVkLWJ5OiBDbGF1ZGU6Y2xh
dWRlLW9wdXMtNS01Cj4gU2lnbmVkLW9mZi1ieTogR2VvcmdlIE5lYWNzdSA8Z2VvY2F1c2FAZ21h
aWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3Mt
Y3NpcGh5LmMgfCAzNSArKysrKysrKysrKysrKy0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQs
IDIxIGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lwaHkuYyBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lwaHkuYwo+IGluZGV4IGY0NGYyYWViOS4u
OGUxYjQzMzVhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1z
cy9jYW1zcy1jc2lwaHkuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1z
cy9jYW1zcy1jc2lwaHkuYwo+IEBAIC0zMjksMTcgKzMyOSwxNSBAQCBzdGF0aWMgaW50IGNzaXBo
eV9zdHJlYW1fb24oc3RydWN0IGNzaXBoeV9kZXZpY2UgKmNzaXBoeSkKPiAgICAgICAgIHU4IGJw
cCA9IGNzaXBoeV9nZXRfYnBwKGNzaXBoeS0+cmVzLT5mb3JtYXRzLT5mb3JtYXRzLCBjc2lwaHkt
PnJlcy0+Zm9ybWF0cy0+bmZvcm1hdHMsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBjc2lwaHktPmZtdFtNU01fQ1NJUEhZX1BBRF9TSU5LXS5jb2RlKTsKPiAgICAgICAgIHN0cnVj
dCBjc2lwaHlfbGFuZXNfY2ZnICpsbmNmZyA9ICZjc2lwaHktPmNmZy5jc2kyLT5sYW5lX2NmZzsK
PiAtICAgICAgIHN0cnVjdCBwaHlfY29uZmlndXJlX29wdHNfbWlwaV9kcGh5ICpkcGh5X2NmZzsK
PiAtICAgICAgIHVuaW9uIHBoeV9jb25maWd1cmVfb3B0cyBkcGh5X29wdHMgPSB7IDAgfTsKPiAr
ICAgICAgIGNvbnN0IGJvb2wgY3BoeSA9IGxuY2ZnLT5waHlfY2ZnID09IFY0TDJfTUJVU19DU0ky
X0NQSFk7Cj4gKyAgICAgICB1bmlvbiBwaHlfY29uZmlndXJlX29wdHMgb3B0cyA9IHsgMCB9Owo+
ICAgICAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gY3NpcGh5LT5jYW1zcy0+ZGV2Owo+ICAgICAg
ICAgdTggbnVtX2xhbmVzID0gbG5jZmctPm51bV9kYXRhOwo+ICAgICAgICAgczY0IGxpbmtfZnJl
cTsKPiAgICAgICAgIGludCByZXQ7Cj4KPiAtICAgICAgIGRwaHlfY2ZnID0gJmRwaHlfb3B0cy5t
aXBpX2RwaHk7Cj4gLQo+ICAgICAgICAgbGlua19mcmVxID0gY2Ftc3NfZ2V0X2xpbmtfZnJlcSgm
Y3NpcGh5LT5zdWJkZXYuZW50aXR5LCBicHAsIG51bV9sYW5lcywKPiAtICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgY3NpcGh5LT5jZmcuY3NpMi0+bGFuZV9jZmcucGh5X2Nm
ZyA9PSBWNEwyX01CVVNfQ1NJMl9DUEhZKTsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgY3BoeSk7Cj4KPiAgICAgICAgIGlmIChsaW5rX2ZyZXEgPD0gMCkgewo+ICAg
ICAgICAgICAgICAgICBkZXZfZXJyKGRldiwKPiBAQCAtMzQ3LDIzICszNDUsMzIgQEAgc3RhdGlj
IGludCBjc2lwaHlfc3RyZWFtX29uKHN0cnVjdCBjc2lwaHlfZGV2aWNlICpjc2lwaHkpCj4gICAg
ICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ICAgICAgICAgfQo+Cj4gLSAgICAgICByZXQg
PSBwaHlfbWlwaV9kcGh5X2dldF9kZWZhdWx0X2NvbmZpZ19mb3JfaHNjbGsobGlua19mcmVxLCBu
dW1fbGFuZXMsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgZHBoeV9jZmcpOwo+IC0gICAgICAgaWYgKHJldCA8IDApIHsKPiAtICAgICAg
ICAgICAgICAgZGV2X2VycihkZXYsICJJbnZhbGlkIGNvbmZpZyBmb3IgbGluayBmcmVxdWVuY3kg
JWxsZFxuIiwKPiAtICAgICAgICAgICAgICAgICAgICAgICBsaW5rX2ZyZXEpOwo+IC0gICAgICAg
ICAgICAgICByZXR1cm4gcmV0Owo+ICsgICAgICAgaWYgKGNwaHkpIHsKPiArICAgICAgICAgICAg
ICAgLyogQSBDLVBIWSBsaW5rIGZyZXF1ZW5jeSBpcyBoYWxmIHRoZSBzeW1ib2wgcmF0ZS4gKi8K
PiArICAgICAgICAgICAgICAgb3B0cy5taXBpX2NwaHkuc3ltYm9sX3JhdGUgPSBsaW5rX2ZyZXEg
KiAyOwo+ICsgICAgICAgICAgICAgICBvcHRzLm1pcGlfY3BoeS5sYW5lcyA9IG51bV9sYW5lczsK
CldvdWxkbid0IGl0IGJlIGNsZWFuZXIgdG8gdXNlIGEgc2ltaWxhciBoZWxwZXIgZnVuY3Rpb24g
YXMgdGhlIEQtUEhZCmRyaXZlciBkb2VzOgpJbnRyb2R1Y2luZyBhIHBoeV9taXBpX2NwaHlfZ2V0
X2RlZmF1bHRfY29uZmlnX2Zvcl9oc2NsawoKPiArICAgICAgIH0gZWxzZSB7Cj4gKyAgICAgICAg
ICAgICAgIHJldCA9IHBoeV9taXBpX2RwaHlfZ2V0X2RlZmF1bHRfY29uZmlnX2Zvcl9oc2Nsayhs
aW5rX2ZyZXEsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBudW1fbGFuZXMsCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmb3B0cy5taXBpX2RwaHkp
Owo+ICsgICAgICAgICAgICAgICBpZiAocmV0IDwgMCkgewo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGRldl9lcnIoZGV2LCAiSW52YWxpZCBjb25maWcgZm9yIGxpbmsgZnJlcXVlbmN5ICVsbGRc
biIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsaW5rX2ZyZXEpOwo+ICsgICAg
ICAgICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gKyAgICAgICAgICAgICAgIH0KPiAgICAg
ICAgIH0KPgo+IC0gICAgICAgcmV0ID0gcGh5X3NldF9tb2RlKGNzaXBoeS0+cGh5LCBQSFlfTU9E
RV9NSVBJX0RQSFkpOwo+ICsgICAgICAgcmV0ID0gcGh5X3NldF9tb2RlKGNzaXBoeS0+cGh5LAo+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgIGNwaHkgPyBQSFlfTU9ERV9NSVBJX0NQSFkgOiBQ
SFlfTU9ERV9NSVBJX0RQSFkpOwo+ICAgICAgICAgaWYgKHJldCkgewo+ICAgICAgICAgICAgICAg
ICBkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBzZXQgcGh5IG1vZGVcbiIpOwo+ICAgICAgICAgICAg
ICAgICByZXR1cm4gcmV0Owo+ICAgICAgICAgfQo+Cj4gLSAgICAgICByZXQgPSBwaHlfY29uZmln
dXJlKGNzaXBoeS0+cGh5LCAmZHBoeV9vcHRzKTsKPiArICAgICAgIHJldCA9IHBoeV9jb25maWd1
cmUoY3NpcGh5LT5waHksICZvcHRzKTsKPiAgICAgICAgIGlmIChyZXQpIHsKPiAtICAgICAgICAg
ICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8gY29uZmlndXJlIE1JUEkgRC1QSFlcbiIpOwo+
ICsgICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBjb25maWd1cmUgTUlQSSAl
c1xuIiwKPiArICAgICAgICAgICAgICAgICAgICAgICBjcGh5ID8gIkMtUEhZIiA6ICJELVBIWSIp
Owo+ICAgICAgICAgICAgICAgICBnb3RvIGVycm9yOwo+ICAgICAgICAgfQo+Cj4KPiAtLQo+IDIu
NTMuMAo+Cj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
